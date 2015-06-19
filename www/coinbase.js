// Cordova <-> native interface

module.exports = {
    startOAuthAuthentication: function (clientId, scope, redirectUri, successCallback, errorCallback) {
    	console.log('INFO', 'startOAuthAuthentication');
        cordova.exec(successCallback, errorCallback, "CoinbaseOAuth", "startOAuthAuthentication", [clientId, scope, redirectUri]);
    }
};
