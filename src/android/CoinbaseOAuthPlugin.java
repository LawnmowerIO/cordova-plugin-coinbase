package io.lawnmower.plugin.coinbase;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

import com.coinbase.android.sdk.OAuth;

public class CoinbaseOAuthPlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {

        if (action.equals("startOAuthAuthentication")) {

            String clientId = args.getString(0);
            String scope = args.getString(1);
            String redirectUri = args.getString(2);

            this.startOAuthAuthentication(clientId, scope, redirectUri, callbackContext);
            
            return true;

        } else {
            return false;
        }
    }

    private void startOAuthAuthentication(String clientId, String scope, String redirectUri,  CallbackContext callbackContext) {
        if (null != clientId && clientId.length() > 0 && null != scope && scope.length() > 0 && null != redirectUri && redirectUri.length() > 0) {
            OAuth.beginAuthorization(this, clientId, scope, redirectUri, null);
            callbackContext.success("Success");
        } else {
            callbackContext.error("Invalid params");
        }
    }
}
