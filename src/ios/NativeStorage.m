// /////////////////////////////////////////////////////////////////////////////////////
//                           Copyright (c) 2013 - 2013
//                            Coyote Logistics L.L.C.
//                          All Rights Reserved Worldwide
//
// WARNING:  This program (or document) is unpublished, proprietary
// property of Coyote Logistics L.L.C. and is to be maintained in strict confidence.
// Unauthorized reproduction, distribution or disclosure of this program
// (or document), or any program (or document) derived from it is
// prohibited by State and Federal law, and by local law outside of the U.S.
// /////////////////////////////////////////////////////////////////////////////////////

#import "NativeStorage.h"

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