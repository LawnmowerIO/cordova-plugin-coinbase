// Cordova <-> native interface

module.exports = {
    startOAuthAuthentication: function (clientId, scope, redirectUri, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "CoinbaseOAuth", "startOAuthAuthentication", [clientId, scope, redirectUri]);
    }
};
