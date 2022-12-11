
function(creds) {

var Base64 = Java.type('java.util.Base64');
var credentialData = read('../' + 'resources/credentials.properties');
var pwd1 = Base64.getEncoder().decodeToString(credentialData.password1).getBytes();
//var pwd2 = Base64.getEncoder().decodeToString(credentialData.password2);


return pwd1
}