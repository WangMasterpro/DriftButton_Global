//
//  RWDriftButton.h
//  GlobalDriftButton
//
//  Created by Rick on 16/10/26.
//  Copyright © 2016年 Rick Wong. All rights reserved.

//  /*悬浮按钮单例类*/

#import <UIKit/UIKit.h>

@interface RWDriftButton : UIButton
@property (nonatomic, copy) void (^clickHandler)(); // 悬浮按钮的点击回调
+ (instancetype)shareInstance;
@end
