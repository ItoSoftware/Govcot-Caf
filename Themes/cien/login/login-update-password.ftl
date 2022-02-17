<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
    <#elseif section = "form">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;500&display=swap" rel="stylesheet">
    <style>
      .mainContainer{
          width:100%;
          background-color:#4C307C;
          font-family: 'Montserrat', sans-serif;
          font-size: 16px;       
      }
      .mainbox{
            background: #52F3A0;
            width: 30%;
            display: block;
            margin: auto;
            padding: 2%;
            border-radius: 10px;
      }
      .imgDiv{
          margin-bottom:10%;
          text-align: center;
      }
      .imageSize{
          width:50%;
          height:20%;
      }
      .userNameWrapper{
       width:100%;
      }
      .submmitInput{
          width:100%;
          background-color:#4C307C;
          color:white;border-radius:5px;
          height:50px;
          margin-top:10px;
          border:none;
      }
      </style>
            <div class="mainContainer container">
                <div id="loginbox" class="col-md-12 col-sm-12 col-12">
                    <div class="mainbox">
                        
                        <div class="imgDiv">
                            <img src="${url.resourcesPath}/fonts/baselogo2.png"
                            alt="logo" class="imageSize center-vertically"/>
                        </div>
                        
                            <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                                <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                                    readonly="readonly" style="display:none;"/>
                                <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

                                <div class="${properties.kcFormGroupClass!}">
                                    <div class="${properties.kcInputWrapperClass!} userNameWrapper" >
                                        <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
                                            autofocus autocomplete="new-password" placeholder="Nueva contraseña"
                                            style="height:50px;border-radius:5px;background-color:#EEEEEE;width:100%"
                                            aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                                        />

                                        <#if messagesPerField.existsError('password')>
                                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                                            </span>
                                        </#if>
                                    </div>
                                </div>

                                <div class="${properties.kcFormGroupClass!}">
                                    <div class="${properties.kcInputWrapperClass!} userNameWrapper">
                                        <input type="password" id="password-confirm" name="password-confirm"
                                            class="${properties.kcInputClass!}"
                                            style="height:50px;border-radius:5px;background-color:#EEEEEE;width:100%"
                                            autocomplete="new-password" placeholder="Confirmar contraseña"
                                            aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                                        />

                                        <#if messagesPerField.existsError('password-confirm')>
                                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                                            </span>
                                        </#if>

                                    </div>
                                </div>

                                <div class="${properties.kcFormGroupClass!}">
                                    <#if isAppInitiatedAction??>
                                        <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                            <div class="${properties.kcFormOptionsWrapperClass!}">
                                            
                                                    <div class="checkbox">
                                                        <label><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked> ${msg("logoutOtherSessions")}</label>
                                                    </div>
                                            
                                            </div>
                                        </div>
                                     </#if>

                                    <div id="kc-form-buttons">
                                        <#if isAppInitiatedAction??>
                                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" 
                                            style="width:45%;background-color:#4baaf5;color:white;border-radius:5px;
                                            border:none; height:50px; font-weight:bold;margin-left:5%;" />
                                            <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                                        <#else>
                                            <input class="submmitInput" type="submit" value="${msg("doSubmit")}"  />
                                        </#if>
                                    </div>
                                </div>
                            </form>    
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>