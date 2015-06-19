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

@end
