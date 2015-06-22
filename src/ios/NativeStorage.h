#import <Cordova/CDVPlugin.h>

@interface NativeStorage : CDVPlugin

- (void) GetValue:(CDVInvokedUrlCommand*)command;

@end

