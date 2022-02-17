<#import "template.ftl" as layout>
<#import "./resources/fonts/baselogo.png" as baselogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;500&display=swap" rel="stylesheet">
    <#if section = "title">
    <#elseif section = "form">
        <#if realm.password>
             <style>
                    .mainContainer{
                        width:100%;
                        height:100%;
                        background-color: #4C307C;
                        font-family: 'Montserrat', sans-serif;
                        font-size: 16px;
                    }
                    .regresar{
                        text-align: right;
                        margin-top: 10px;
                    }

                    .mainDiv{
                        background: #52F3A0;
                        width: 30%;
                        display: block;
                        margin: auto;
                        padding: 2%;
                        border-radius: 10px;
                        }
                    .section-right{
                       text-align:right;
                       padding-bottom: 15px;
                    }
                    .section-right a{
                        color:#281451;
                    }
                    .pagelogo{
                        margin-bottom:10%;
                        text-align: center;
                    }
                    .userNameField{
                        width: 100%;
                        margin-bottom:10px;
                    }
                    .inputUserName{
                        height:50px;
                        border-radius:5px;
                        background-color:#EEEEEE;
                    }
                    .passwordDiv{
                        width: 100%;
                        margin-bottom:10px;
                    }
                    .submitFormGroup{
                        width: 100%;
                    }
                    .buttonLogin{
                        width:108%;
                        background-color: #4C307C;
                        color:white;
                        border-radius:5px;
                        border:none;
                        height:50px;
                        font-weight:bold;
                    }
                    .forgetForm{
                        width: 67%;
                        margin-bottom:40px;
                        
                    }
                    .forgetDiv{
                        display: flex; padding-left:35%;
                    }
                    .forgetText{
                        text-decoration:none;color:#C0C0C0;
                    }
                    .doRegisterForm{
                        width: 67%
                    }
                    .doRegisterDiv{
                        display: flex;
                        padding-left:12%;
                    }
                    .footer{
                        padding-top:20%;
                        color:#808080;
                    }
                    .imageSize{
                        width:50%;height:20%;
                    }
                    
                    @media screen and (max-width: 1024px){
                       .mainContainer{
                        width:100%;
                        height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            width:40%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4C307C;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:160%;
                            color:#808080;
                        }
                         
                    }
                    @media screen and (max-width: 920px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            width:50%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4C307C;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:70%;
                            width:350px;
                            color:#808080;
                        }
                    }
                    @media screen and (max-width: 720px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            margin-left:10%;
                            width:60%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4C307C;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:50%;
                            width:350px;
                            color:#808080;
                        }
                    }
                    @media screen and (max-width: 620px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            margin-left:16%;
                            width:70%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:40%;height:40%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4C307C;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:50%;
                            width:350px;
                            color:#808080;
                        }
                    }
                     @media screen and (max-width: 520px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            margin-left:0%;
                            width:100%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:40%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4C307C;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:30%;
                            width:350px;
                            color:#808080;
                        }
                    }
                
             </style>
            <div class="mainContainer container">
                <div id="loginbox" class="col-md-12 col-sm-12 col-12">
                    <div class="mainDiv">
                        
                        <div class="pagelogo">
                            <img src="${url.resourcesPath}/fonts/baselogo2.png"
                            alt="logo" class="imageSize" />
                        </div>

                        <div class="panel-body">
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-12">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>

                            <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                                    <div class="userNameField ${properties.kcInputWrapperClass!}">
                                        <#if usernameEditDisabled??>
                                            <input tabindex="1" id="username"
                                             class=" inputUserName ${properties.kcInputClass!}"
                                             name="username" value="${(login.username!'')}" 
                                             type="text" disabled placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                        <#else>
                                            <input tabindex="1" id="username" class="inputUserName ${properties.kcInputClass!}"
                                             name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" 
                                             placeholder="Correo electrónico"/>
                                        </#if>
                                    </div>
                                    
                                    <div class="passwordDiv ${properties.kcInputWrapperClass!}">
                                        <input tabindex="2" 
                                            id="password" 
                                            class="inputUserName ${properties.kcInputClass!}" 
                                            name="password" 
                                            type="password" 
                                            autocomplete="off" 
                                            placeholder="${msg("password")}"/>
                                    </div>

                                     <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!} section-right">
                                        <div id="kc-form-options">
                                            <#if realm.rememberMe && !usernameEditDisabled??>
                                                <div class="checkbox">
                                                    <label>
                                                        <#if login.rememberMe??>
                                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                                        <#else>
                                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                                        </#if>
                                                    </label>
                                                </div>
                                            </#if>
                                        </div>
                                        <div class="${properties.kcFormOptionsWrapperClass!}">
                                            <#if realm.resetPasswordAllowed>
                                                <span><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                                            </#if>
                                        </div>
                                    </div>

                                    <div id="kc-form-buttons" class="submitFormGroup ${properties.kcFormButtonsClass!}">
                                        <div class="${properties.kcFormButtonsWrapperClass!}">
                                            <input tabindex="4" class="buttonLogin"
                                            name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                                            <#if realm.password && social.providers??>
                                                <#list social.providers as p>
                                                    <a href="${p.loginUrl}" id="zocial-${p.alias}" class="btn btn-primary">${msg("doLogIn")} With ${p.displayName}</a>
                                                </#list>
                                            </#if>
                                        </div>
                                        <div class="col-sm-12 regresar">
                                            <a href="https://cien.itofontic.co/"> Volver al inicio </a> 
                                        </div>
                                    </div>

                                   
                            </form>
                        </div>
                    </div>  
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>