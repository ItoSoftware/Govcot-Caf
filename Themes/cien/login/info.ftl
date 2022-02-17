<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;500&display=swap" rel="stylesheet">
    <#if section = "header">
        <#if messageHeader??>
        <#else>
        </#if>
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
        <p class="instruction">${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></p>
        <#if skipLink??>
        <#else>
            <#if pageRedirectUri?has_content>
                <p><a href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            <#elseif actionUri?has_content>
                <p><a href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#elseif (client.baseUrl)?has_content>
                <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            </#if>
        </#if>
        </div>
         </div>
    </div>
    </#if>
</@layout.registrationLayout>