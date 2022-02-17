<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
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
      .section-right{
            text-align:right;
            margin-top: 15px;
        }
      .section-right a{
            color:#281451 !important;
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
      .inputUsername{
          height:50px; background-color:#EEEEEE;
      }
      .submmitInput{
          width:100%;
          background-color:#4C307C;
          color:white;border-radius:5px;
          height:50px;
          margin-top:10px;
          border:none;
      }
      .backLoginDiv{
          display: flex; width: 67% ;padding-left:15%;padding-top:10px;
      }
      .footer{
          padding-top:30%;color:#808080;
      }
       @media screen and (max-width: 1024px){
            .mainContainer{
                width:100%;
                }
            .mainbox{
                padding-top:10%;
                width: 100%;
            }
            .imgDiv{
                margin-bottom:10%;
                text-align: center;
            }
            .imageSize{
                width:50%;height:40%;
            }
            .userNameWrapper{
                    width:100%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:100%;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 920px){
           .mainContainer{
                width:100%;
                }
            .mainbox{
                padding-top:10%;
                width: 100%;
            }
            .imgDiv{
                margin-bottom:10%;
                text-align: center;
            }
            .imageSize{
                width:50%;height:20%;
            }
            .userNameWrapper{
                    width:100%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:100%;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 720px){
           .mainContainer{
                width:100%;
                }
            .mainbox{
                padding-top:10%;
                width: 100%;
            }
            .imgDiv{
                margin-bottom:10%;
                text-align: center;
            }
            .imageSize{
                width:50%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 620px){
             .mainContainer{
                width:100%;
                }
            .mainbox{
                padding-top:10%;
                width: 100%;
            }
           .imgDiv{
                margin-bottom:10%;
                text-align: center;
            }
            .imageSize{
                width:50%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            
       }
       @media screen and (max-width: 520px){
            .mainContainer{
                width:100%;
                }
            .mainbox{
                padding-top:10%;
            }
            .imgDiv{
                margin-bottom:10%;
                text-align: center;
            }
            .imageSize{
                width:50%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
       }
    </style>
    <div class="mainContainer container">
        <div id="loginbox" class="col-md-12 col-sm-12 col-12">
                <div class="mainbox">
                    <div>
                        <div class="imgDiv">
                            <img src="${url.resourcesPath}/fonts/baselogo2.png"
                             alt="logo" class="imageSize center-vertically"/>
                        </div>
                    </div>
                    <div class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-danger col-sm-12">
                                <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                            </div>
                        </#if>
                        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                            <div class="${properties.kcFormGroupClass!}">
                                <div class="${properties.kcLabelWrapperClass!}">
                                    <div class="userNameWrapper ${properties.kcInputWrapperClass!}">
                                        
                                        <#if auth?has_content && auth.showUsername()>
                                            <input type="text" id="username" name="username" class="inputUsername ${properties.kcInputClass!}" placeholder="Correo electrónico" 
                                            autofocus value="${auth.attemptedUsername}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        <#else>
                                            <input type="text" id="username" name="username" class="inputUsername ${properties.kcInputClass!}" 
                                            placeholder="Ingrese correo electrónico" autofocus aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        </#if>

                                        <#if messagesPerField.existsError('username')>
                                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                            </span>
                                        </#if>
                                    </div>
                                </div>
                                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                                
                                    <input class="submmitInput" type="submit" value="${msg("doSubmit")}"/>
                                
                                <div id="kc-form-options" class="section-right">
                                    <div class="${properties.kcFormOptionsWrapperClass!}">
                                        <span><a href="${url.loginUrl}" 
                                        style="text-decoration:none; color:#C0C0C0" class="">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#if>
</@layout.registrationLayout>
