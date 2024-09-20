import * as cdk from 'aws-cdk-lib';
import { Construct } from 'constructs';
import { KeyCloak, KeycloakVersion } from 'cdk-keycloak';

const env = {
  region: process.env.CDK_DEFAULT_REGION || 'us-east-1',
  account: process.env.CDK_DEFAULT_ACCOUNT || '230071806171',
};

//keycloakVersion: KeycloakVersion.of('22.0.0'),
export class KeycloakCdkStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, { ...props, env });

    const imageRepo = cdk.aws_ecr.Repository.fromRepositoryName(this, 'keycloak', 'keycloak');
    new KeyCloak(this, 'KeyCloak', {
      certificateArn: 'arn:aws:acm:us-east-1:230071806171:certificate/bd49e4e9-508f-4e83-a094-4a9bd90e4858',      
      keycloakVersion: KeycloakVersion.V20_0_3,
      instanceEngine: cdk.aws_rds.DatabaseInstanceEngine.mysql({
        version: cdk.aws_rds.MysqlEngineVersion.VER_8_0_33
      }),
      containerImage: cdk.aws_ecs.ContainerImage.fromEcrRepository(imageRepo, '22.0.1'),
      auroraServerlessV2:true,
      nodeCount: 1,
      vpc: cdk.aws_ec2.Vpc.fromLookup(this, 'Vpc', { vpcId: 'vpc-08587259374864b8f' }),
      publicSubnets: {
        subnets: [
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'pub-1b', 'subnet-08372e4148e6c8677'),
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'pub-1a', 'subnet-0a30f1878e27748e5')
        ],
      },
      privateSubnets: {
        subnets: [
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'priv-1a', 'subnet-0810520d4bea9d35e'),
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'priv-1b', 'subnet-04269d245607d50bd')
        ],
      },
      databaseSubnets: {
        subnets: [
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'db-1a', 'subnet-0810520d4bea9d35e'),
          cdk.aws_ec2.Subnet.fromSubnetId(this, 'db-1b', 'subnet-04269d245607d50bd')
        ],
      },
      hostname: 'auth.loyaltywall.com'
    });
  }
}
