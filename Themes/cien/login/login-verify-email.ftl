<#import "template.ftl" as layout>
<#import "./resources/fonts/baselogo.png" as baselogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;500&display=swap" rel="stylesheet">
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
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
            margin-top: 6%;
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
                <div class="col-md-12 col-sm-12 col-12">
                    <div class="mainbox">
                        <div class="imgDiv">
                            <img src="${url.resourcesPath}/fonts/baselogo2.png"
                             alt="logo" class=" imageSize center-vertically"/>
                        </div>
                        <div class="panel panel-info" style="border:1px solid silver;">
                                <div class="panel-body">
                                    <div class="panel-title" style="padding-bottom:5%; font-weight:500;font-size: 2rem;font-family:arial;">Email Verification</div>
                                    <div style="pading-top:40%;
                                                height:40px
                                                ">
                                        <p> ${msg("verifyEmailMessage")}</p>
                                    </div>
                                    <div style="pading-top:30%;
                                                height:30%">
                                        <p> ${msg("emailVerifyInstruction1")}</p>
                                    </div>
                                    <div style="height:30%;">
                                        <p class="instruction">
                                            ${msg("emailVerifyInstruction2")}
                                            <br/>
                                            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
                                        </p>
                                    </div>
                                </div>
                        </div>
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>