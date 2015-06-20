# Cordova Coinbase Plugin

Cordova plugin that wraps the Coinbase native SDKs for Android and iOS. Only method implemented so far is startOAuthAuthentication (for logging in OAuth style with app switching).

## Using
    
Install the plugin

    $ cordova plugin add http://github.com/LawnmowerIO/cordova-plugin-coinbase

Initiate OAuth sign in

```js
    var success = function(message) {
        alert(message);
    }

    var failure = function() {
        alert("Error calling Coinbase Plugin");
    }

    var coinbaseClientId = 'YOUR_CLIENT_ID';
    var coinbaseScope = 'DESIRED_API_SCOPES';
    var coinbaseRedirectUri = 'YOUR_APP_REDIRECT_URI';

    window.coinbase.startOAuthAuthentication(
	    coinbaseClientId,
	    coinbaseScope,
	    coinbaseRedirectUri,
	    success,
	    failure
	);
```

Note that for the redirect URI you'll need to set up a URL scheme for your app. You can use the [Custom URL scheme](https://github.com/EddyVerbruggen/Custom-URL-scheme) plugin to do so.

## More Info

For more info on the Coinbase SDKs, see [coinbase-android-sdk](https://github.com/coinbase/coinbase-android-sdk) and [coinbase-ios-sdk](https://github.com/coinbase/coinbase-ios-sdk).

For more information on setting up Cordova see [the documentation](http://cordova.apache.org/docs/en/4.0.0/guide_cli_index.md.html#The%20Command-Line%20Interface)

For more info on plugins see the [Plugin Development Guide](http://cordova.apache.org/docs/en/4.0.0/guide_hybrid_plugins_index.md.html#Plugin%20Development%20Guide)
