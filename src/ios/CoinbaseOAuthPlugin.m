#import "CoinbaseOAuthPlugin.h"
#import "CoinbaseOAuth.h"

@implementation CoinbaseOAuthPlugin

- (void) startOAuthAuthentication: (CDVInvokedUrlCommand*)command
{
  CDVPluginResult* pluginResult = nil;
  NSString* clientId = [command.arguments objectAtIndex:0];
  NSString* scope = [command.arguments objectAtIndex:1];
  NSString* redirectUri = [command.arguments objectAtIndex:2];

  // Launch the web browser or Coinbase app to authenticate the user.
  [CoinbaseOAuth startOAuthAuthenticationWithClientId:clientId
                                                scope:scope
                                          redirectUri:redirectUri
                                                 meta:nil];

  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

/* NOTE: calls into JavaScript must not call or trigger any blocking UI, like alerts */
- (void)handleOpenURL:(NSNotification*)notification
{
    // override to handle urls sent to your app
    // register your url schemes in your App-Info.plist

    NSURL* url = [notification object];

    if ([url isKindOfClass:[NSURL class]]) {
        NSLog(@"%@", url);
        if ([[url scheme] isEqualToString:@"io.lawnmower.mobile"]) {
            // This is a redirect from the Coinbase OAuth web page or app.
            NSLog(@"%@", url);
        }
    }
}


@end
