<#macro termsAcceptance>
    <#if termsAcceptanceRequired??>
        <!-- Incluir CSS de Pikaday -->
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
        <!-- Incluir JavaScript de Pikaday -->
        <script src="https://cdn.jsdelivr.net/npm/pikaday/pikaday.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
        <!-- Estilos de Country Select JS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/country-select-js/2.0.1/css/countrySelect.min.css">
        <!-- Script de Country Select JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/country-select-js/2.0.1/js/countrySelect.min.js"></script>        

        <div class="form-group">
            
        </div>
        <div class="form-group">
            <div class="${properties.kcLabelWrapperClass!}">                    
                <label for="tipoDocumento" class="${properties.kcLabelClass!}">Tipo de Documento</label>                
                <select id="tipoDocumento" name="tipoDocumento" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('tipoDocumento')>true</#if>">
                    <option value="">Seleccione un tipo de documento...</option>
                    <option value="cc" <#if (register.formData.tipoDocumento!'')=='cc'> selected</#if> >Cédula de Ciudadanía (CC)</option>
                    <option value="ti" <#if (register.formData.tipoDocumento!'')=='ti'> selected</#if> >Tarjeta de Identidad (TI)</option>
                    <option value="ce" <#if (register.formData.tipoDocumento!'')=='ce'> selected</#if> >Cédula de Extranjería (CE)</option>
                    <option value="pasaporte" <#if (register.formData.tipoDocumento!'')=='pasaporte'> selected</#if> >Pasaporte</option>
                    <option value="nit" <#if (register.formData.tipoDocumento!'')=='nit'> selected</#if> >Número de Identificación Tributaria (NIT)</option>
                    <option value="registroCivil" <#if (register.formData.tipoDocumento!'')=='registroCivil'> selected</#if> >Registro Civil</option>
                </select>
                <#if messagesPerField.existsError('tipoDocumento')>
                    <span id="input-error-tipoDocumento" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('tipoDocumento'))?no_esc}
                    </span>
                </#if>
            </div>        
            <div class="${properties.kcLabelWrapperClass!}">         
                <label for="numeroDocumento" class="${properties.kcLabelClass!}">Número de Documento</label>   
                <input type="text" id="numeroDocumento" name="numeroDocumento" value="${(register.formData.numeroDocumento!'')}" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('numeroDocumento')>true</#if>"
                    autocomplete="off"                    
                    required maxlength="15"/>
                <#if messagesPerField.existsError('numeroDocumento')>
                    <span id="input-error-numeroDocumento" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('numeroDocumento'))?no_esc}
                    </span>
                </#if>
            </div>
            <div class="${properties.kcLabelWrapperClass!}">                                            
                <label for="genero" class="${properties.kcLabelClass!}">Género</label>                
                <select id="genero" name="genero" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('genero')>true</#if>">
                    <option value="">Seleccione un género...</option>
                    <option value="M" <#if (register.formData.genero!'')=='M'> selected</#if> >Sitio 1</option>
                    <option value="F" <#if (register.formData.genero!'')=='F'> selected</#if>>Sitio 2</option>
                    <option value="N" <#if (register.formData.genero!'')=='N'> selected</#if>>Sitio 3</option>
                </select>
                <#if messagesPerField.existsError('genero')>
                    <span id="input-error-genero" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('genero'))?no_esc}
                    </span>
                </#if>
            </div>   
            <div class="${properties.kcLabelWrapperClass!}">                                            
                <label for="genero" class="${properties.kcLabelClass!}">Género</label>                
                <select id="genero" name="genero" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('genero')>true</#if>">
                    <option value="">Seleccione un género...</option>
                    <option value="M" <#if (register.formData.genero!'')=='M'> selected</#if> >Masculino</option>
                    <option value="F" <#if (register.formData.genero!'')=='F'> selected</#if>>Femenino</option>
                    <option value="N" <#if (register.formData.genero!'')=='N'> selected</#if>>Prefiero no decirlo</option>
                </select>
                <#if messagesPerField.existsError('genero')>
                    <span id="input-error-genero" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('genero'))?no_esc}
                    </span>
                </#if>
            </div>   
            <div class="${properties.kcLabelWrapperClass!}">         
                <label for="fechaNacimiento" class="${properties.kcLabelClass!}">Fecha de nacimiento</label>   
                <input type="text" id="fechaNacimiento" name="fechaNacimiento" value="${(register.formData.fechaNacimiento!'')}" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('fechaNacimiento')>true</#if>"
                    autocomplete="off">
                <#if messagesPerField.existsError('fechaNacimiento')>
                    <span id="input-error-fechaNacimiento" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('fechaNacimiento'))?no_esc}
                    </span>
                </#if>
            </div>
            <div class="${properties.kcLabelWrapperClass!}">         
                <label for="numeroTelefonico" class="${properties.kcLabelClass!}">Número Telefónico</label>   
                <input type="text" id="numeroTelefonico" name="numeroTelefonico" value="${(register.formData.numeroTelefonico!'')}" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('numeroTelefonico')>true</#if>"
                    autocomplete="off">
                <input type="hidden" id="dialTelefonico" name="dialTelefonico" value="${(register.formData.dialTelefonico!'57')}"/>
                <#if messagesPerField.existsError('numeroTelefonico')>
                    <span id="input-error-numeroTelefonico" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('numeroTelefonico'))?no_esc}
                    </span>
                </#if>
            </div>
            <div class="${properties.kcLabelWrapperClass!}">         
                <label for="pais" class="${properties.kcLabelClass!}">País de Residencia</label>   
                <input type="text" id="pais" name="pais" value="${(register.formData.pais!'')}" class="${properties.kcInputClass!}"
		            aria-invalid="<#if messagesPerField.existsError('pais')>true</#if>">
                <input type="hidden" id="pais_code" name="pais_code" value="${(register.formData.pais_code!'co')}"/>
                <#if messagesPerField.existsError('pais')>
                    <span id="input-error-pais" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('pais'))?no_esc}
                    </span>
                </#if>
            </div>
            <div class="${properties.kcLabelWrapperClass!}">         
                <label for="direccion" class="${properties.kcLabelClass!}">Dirección de la Residencia</label>   
                <textarea id="direccion" name="direccion" class="${properties.kcInputClass!}"
                        aria-invalid="<#if messagesPerField.existsError('direccion')>true</#if>"                        
                        rows="3"
                        maxlength= "100"                        
                    >${kcSanitize(register.formData.direccion!'')?no_esc}</textarea>
                <#if messagesPerField.existsError('direccion')>
                    <span id="input-error-direccion" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('direccion'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="${properties.kcInputWrapperClass!}">
                ${msg("termsTitle")}
            </div>
            <div class="${properties.kcLabelWrapperClass!}">            
                <input type="checkbox" id="termsAccepted" name="termsAccepted" class="${properties.kcCheckboxInputClass!}"
                       aria-required="true" aria-invalid="<#if messagesPerField.existsError('termsAccepted')>true</#if>"
                />
                <label for="termsAccepted" class="${properties.kcLabelClass!}"> HE LEIDO Y ACEPTO LOS <a href="https://www.elcolombiano.com/terminos-y-condiciones" target="_blank">TÉRMINOS Y CONDICIONES</a>.</label>                
            </div>  
            <div class="${properties.kcLabelWrapperClass!}">           
                <input type="checkbox" id="termsAcceptedTratamientoDatos" name="termsAcceptedTratamientoDatos" class="${properties.kcCheckboxInputClass!}"
                       aria-required="true" aria-invalid="<#if messagesPerField.existsError('termsAcceptedTratamientoDatos')>true</#if>" 
                />
                <label for="termsAcceptedTratamientoDatos" class="${properties.kcLabelClass!}">HE LEIDO Y ACEPTO EL <a href="https://www.elcolombiano.com/historico/politica_de_tratamiento_de_la_informacion_personal-DCEC_251705" target="_blank">TRATAMIENTO DE LOS DATOS</a>.</label>
            </div>
            <div class="${properties.kcLabelWrapperClass!}">        
                <input type="checkbox" id="termsAcceptedUsoInformacionTerceros" name="termsAcceptedUsoInformacionTerceros" class="${properties.kcCheckboxInputClass!}"
                       aria-invalid="<#if messagesPerField.existsError('termsAcceptedUsoInformacionTerceros')>true</#if>"
                />
                <label for="termsAcceptedUsoInformacionTerceros" class="${properties.kcLabelClass!}">
                    HE LEIDO Y ACEPTO EL USO DE LA <a href="https://www.elcolombiano.com/historico/politica_de_tratamiento_de_la_informacion_personal-DCEC_251705" target="_blank">INFORMACIÓN CON TERCEROS</a>.
                </label>
            </div>
            <#if messagesPerField.existsError('termsAccepted') || messagesPerField.existsError('termsAcceptedTratamientoDatos')>
                <div class="${properties.kcLabelWrapperClass!}">
                            <span id="input-error-terms-accepted" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('termsAccepted'))?no_esc}
                            </span>
                </div>
            </#if>
            <script>
                var picker = new Pikaday({ 
                    field: document.getElementById('fechaNacimiento'),
                    format: 'YYYY-MM-DD',
                    yearRange: [1900, new Date().getFullYear()],
                    maxDate: new Date(),
                    i18n: {
                        previousMonth : 'Mes Anterior',
                        nextMonth     : 'Mes Siguiente',
                        months        : ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                        weekdays      : ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                        weekdaysShort : ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb']
                    },
                    toString(date, format) {
                        // you should do formatting based on the passed format,
                        // but we will just return 'D/M/YYYY' for simplicity
                        const day = date.getDate();
                        const month = date.getMonth() + 1;
                        const year = date.getFullYear();
                        return ''+day+'/'+month+'/'+year;                        
                    },
                    parse(dateString, format) {
                        // dateString is the result of `toString` method
                        const parts = dateString.split('/');
                        const day = parseInt(parts[0], 10);
                        const month = parseInt(parts[1], 10) - 1;
                        const year = parseInt(parts[2], 10);
                        return new Date(year, month, day);
                    }                
                });
                
                var input = document.querySelector("#numeroTelefonico");
                var intl= intlTelInput(input, {
                    initialCountry: "co",
                    separateDialCode: true,
                    utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js" // solo para formato y validación
                });
                $("#numeroTelefonico").on('countrychange', function (e, countryData) {
                    $("#dialTelefonico").val(intl.getSelectedCountryData().dialCode);                    
                });

                $("#pais").countrySelect({
                        defaultCountry:"co",
                        responsiveDropdown: true
                    });
                $("#pais").on("countrychange", function(e, countryData) {
                        console.log(countryData)
                        $(this).val(countryData.iso2);
                    });
            </script>
        </div>
    </#if>
</#macro>