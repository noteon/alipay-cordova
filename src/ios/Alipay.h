//
//  Alipay.h
//
//  Created by sunnylqm on 14/12/24.
//
//

#import <Cordova/CDV.h>

@interface Alipay : CDVPlugin

- (void)checkAccount:(CDVInvokedUrlCommand*)command;

@end