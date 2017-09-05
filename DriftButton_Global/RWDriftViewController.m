//
//  RWDriftViewController.m
//  GlobalDriftButton
//
//  Created by Rick on 16/10/27.
//  Copyright © 2016年 Rick Wong. All rights reserved.
//

#import "RWDriftViewController.h"
#import "RWBaseViewController.h"
#import "RWDriftButton.h"

@interface RWDriftViewController ()
@property (nonatomic, strong) RWDriftButton *DriftButton;
@end

@implementation RWDriftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"悬浮类[继承自悬浮类的页面可显示悬浮按钮]";
    self.view.backgroundColor = [UIColor brownColor];
    if (![RWDriftButton shareInstance].superview) {
        [[UIApplication sharedApplication].keyWindow addSubview:[RWDriftButton shareInstance]];
    }
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:[RWDriftButton shareInstance]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [RWDriftButton shareInstance].hidden = NO;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [RWDriftButton shareInstance].hidden = NO;
    [[RWDriftButton shareInstance] setClickHandler:^{
        RWBaseViewController *RWBaseVc = [RWBaseViewController new];
        [self.navigationController pushViewController:RWBaseVc animated:YES];
    }];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    [RWDriftButton shareInstance].hidden = YES;
}

@end
