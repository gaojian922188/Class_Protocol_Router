//
//  AViewController.m
//  Class_Protocol_Router
//
//  Created by Tom Tan on 2019/5/6.
//  Copyright © 2019 Tom Tan. All rights reserved.
//

#import "AViewController.h"
#import "Router.h"
#import "ProtocolB.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)push {
    [Router.shared push:@protocol(ProtocolB) param:@{@"name":@"zhangsan",@"age":@(18)}];
}


@end
