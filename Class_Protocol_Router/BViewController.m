//
//  BViewController.m
//  Class_Protocol_Router
//
//  Created by Tom Tan on 2019/5/6.
//  Copyright © 2019 Tom Tan. All rights reserved.
//

#import "BViewController.h"
#import "ProtocolB.h"
#import "Router.h"
@interface BViewController ()<ProtocolB>
@property(nonatomic,copy) NSString *nameText;
@property(nonatomic,copy) NSString *ageText;
@end

@implementation BViewController
+ (void)load {
    // 如果在其他地方注册，必然要引入BViewController，造成耦合
    [[Router shared] registerProtocol:@protocol(ProtocolB) forClass:BViewController.class];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.name.text = self.nameText;
    self.age.text = self.ageText;
}

- (void)setBViewControllerName:(NSString *)name age:(int)age
{
    self.nameText = name;
    self.ageText = [NSString stringWithFormat:@"%d",age];
}

-(void)dealloc {
    NSLog(@"%s",__func__);
}
@end
