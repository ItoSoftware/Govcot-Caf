<html>
<body>
<h1>Prueba de modificación de templates de envío de correo</h1>
${kcSanitize(msg("emailTestBodyHtml",realmName))?no_esc}
</body>
</html>
