//
//  Alipay.m
//
//  Created by sunny on 14/12/24.
//
//
#import "Alipay.h"
#import <AlipaySDK/AlipaySDK.h>

@implementation Alipay

- (void)checkAccount:(CDVInvokedUrlCommand*)command
{
//    NSString* echo = [command.arguments objectAtIndex:0];
    
//    if (echo != nil && [echo length] > 0) {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//    } else {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//    }
    
    BOOL hasAuthorized = [[AlipaySDK defaultService] isLogined];
    NSLog(@"result = %d",hasAuthorized);
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:hasAuthorized];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end