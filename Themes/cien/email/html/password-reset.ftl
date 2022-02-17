<html>
<body>
<p>¡Hemos recibido una solicitud para restablecer la contraseña de tu cuenta!</p>
${kcSanitize(msg("passwordResetBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
</body>
</html>