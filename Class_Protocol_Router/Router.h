//
//  Router.h
//  Class_Protocol_Router
//
//  Created by Tom Tan on 2019/5/6.
//  Copyright © 2019 Tom Tan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject
@property(nonatomic, strong) NSMutableDictionary *protocol_class_map;//字典保存protocol和class
+ (instancetype)shared;
- (void)registerProtocol:(Protocol *)protocol forClass:(Class)cls;
- (void)push:(Protocol *)protocol param:(NSDictionary *)param;
@end

NS_ASSUME_NONNULL_END
