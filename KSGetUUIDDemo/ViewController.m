//
//  ViewController.m
//  KSGetUUIDDemo
//
//  Created by aDu on 2018/4/13.
//  Copyright © 2018年 DuKaiShun. All rights reserved.
//

#import "ViewController.h"
#import "KSDeviceId.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"UUID=%@", [KSDeviceId getUUIDFromKeyChain]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
