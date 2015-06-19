#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import "CoinbaseOAuth.h"

@interface CoinbaseOAuthPlugin : CDVPlugin {}

- (void) startOAuthAuthentication: (CDVInvokedUrlCommand*)command;

- (void) handleOpenURL: (NSNotification*)notification;

@end

