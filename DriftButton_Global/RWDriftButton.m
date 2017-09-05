//
//  RWDriftButton.m
//  GlobalDriftButton
//
//  Created by Rick on 16/10/26.
//  Copyright © 2016年 Rick Wong. All rights reserved.
//


#import "RWDriftButton.h"

// 大于iOS8以上
#define QRIOS8Later                ([[[UIDevice currentDevice] systemVersion] floatValue] >=8.0 ?  YES : NO)
// 屏幕宽
#define QRMainW (!QRIOS8Later?[UIScreen mainScreen].bounds.size.width:[[[UIScreen mainScreen] fixedCoordinateSpace] bounds].size.width)
// 屏幕高
#define QRMainH (!QRIOS8Later?[UIScreen mainScreen].bounds.size.height:[[[UIScreen mainScreen] fixedCoordinateSpace] bounds].size.height)

@implementation RWDriftButton
+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static RWDriftButton *DriftButton;
    dispatch_once(&onceToken, ^{
        DriftButton = [RWDriftButton buttonWithType:UIButtonTypeCustom];
        CGFloat DriftBottom = 8;
        CGFloat DriftRight  = 8;    // 礼包右边距
        CGFloat DriftBtnW   = 42;   // 礼包宽度
        CGFloat DriftBtnH   = 42;   // 礼包高度
        CGFloat TarbarHight = 49;   // 导航控制器底部tarbar高度
        CGFloat DriftButtonX = QRMainW - DriftRight - DriftBtnW;
        CGFloat DriftButtonY = QRMainH - DriftBottom - DriftBtnW;
        DriftButton.frame = CGRectMake(DriftButtonX, DriftButtonY - TarbarHight, DriftBtnW, DriftBtnH);
        DriftButton.backgroundColor = [UIColor orangeColor];
        DriftButton.layer.cornerRadius = DriftBtnW * 0.5;
        [DriftButton addTarget:DriftButton action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    });
    return DriftButton;
}

/**
 *  点击礼包Block回调
 *
 *  @param sender 
 */
- (void)click:(id)sender
{
    if (self.clickHandler) {
        self.clickHandler();
    }
}
@end
