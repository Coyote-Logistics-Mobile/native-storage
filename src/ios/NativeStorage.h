#import <Cordova/CDVPlugin.h>

@interface NativeStorage : CDVPlugin

- (void) getValue:(CDVInvokedUrlCommand*)command;

@end

