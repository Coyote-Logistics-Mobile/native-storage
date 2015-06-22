#import "NativeStorage.h"
#import <Cordova/CDV.h>

@implementation NativeStorage

- (void) GetValue:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *value = @"";
    NSString *key = [command.arguments objectAtIndex:0];
    if( key != nil ) {
        if( [[key lowercaseString] isEqualToString:@"basic_auth_password"] ) {
            value = @"G6KMnKyG/Ar+bwuUZhO0O98PyWp7prbfB37I7KUIbdI=";
        } else
        if( [[key lowercaseString] isEqualToString:@"demo_credentials"] ) {
            value = @"{\"username\":\"demo@coyote.com\",\"password\":\"coyote\"}";
        }
    }
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
