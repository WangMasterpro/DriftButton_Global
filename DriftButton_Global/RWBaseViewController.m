//
//  RWBaseViewController.m
//  GlobalDriftButton
//
//  Created by Rick on 16/10/26.
//  Copyright © 2016年 Rick Wong. All rights reserved.

//  /*项目中所有页面的基类*/

#import "RWBaseViewController.h"

@interface RWBaseViewController ()

@end

@implementation RWBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.、
    
    [RWDriftButton shareInstance].hidden = YES; // 基类不需要显示，子类如果需要显示悬浮按钮，设置hidden为NO即可；
    
    self.navigationItem.title = @"基类页面[不显示悬浮按钮]";
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
