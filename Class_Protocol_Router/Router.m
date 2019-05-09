//
//  Router.m
//  Class_Protocol_Router
//
//  Created by Tom Tan on 2019/5/6.
//  Copyright © 2019 Tom Tan. All rights reserved.
//

#import "Router.h"
#import "ProtocolB.h"
#import "BViewController.h"
@implementation Router
+ (instancetype)shared
{
    static Router *router;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[Router alloc] init];
    });
    return router;
}

- (void)registerProtocol:(Protocol *)protocol forClass:(Class)cls
{
    if (!self.protocol_class_map) {
        self.protocol_class_map = [[NSMutableDictionary alloc] init];
    }
    self.protocol_class_map[NSStringFromProtocol(protocol)] = cls;
}

- (void)push:(Protocol *)protocol param:(NSDictionary *)param
{
    
    Class cls = self.protocol_class_map[NSStringFromProtocol(protocol)];
    UIViewController<ProtocolB> *bViewController = [[cls alloc] init];
    [bViewController setBViewControllerName:param[@"name"] age:[param[@"age"] intValue]];
    
    [(UINavigationController *)[self topViewController] pushViewController:bViewController animated:YES];
}

- (UIViewController *)topViewController
{
    return UIApplication.sharedApplication.keyWindow.rootViewController;
}
@end

