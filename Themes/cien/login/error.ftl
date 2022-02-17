<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
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
    <#if section = "header">

    <#elseif section = "form">
            <div class="container mainContainer">
                <div id="loginbox" class="col-md-12 col-sm-12 col-12">
                    <div class="mainbox">
                        <div class="imgDiv">
                            <img src="${url.resourcesPath}/fonts/baselogo2.png"
                            alt="logo" class="imageSize center-vertically"/>
                        </div>
                        <h1 id="kc-page-title">Lo sentimos...</h1>
                        <div id="kc-error-message">
                            <p class="instruction">${message.summary?no_esc}</p>
                            <#if client?? && client.baseUrl?has_content>
                                <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
                            </#if>
                        </div>
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>