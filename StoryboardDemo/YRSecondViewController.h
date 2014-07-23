//
//  YRSecondViewController.h
//  StoryboardDemo
//
//  Created by YANGRui on 14-7-23.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YRSecondViewController;

@protocol YRSecondViewControllerDelegate <NSObject>

@optional

- (void)backFromYRSecondViewController:(YRSecondViewController *)vc;

@end

@interface YRSecondViewController : UIViewController
@property (copy , nonatomic) NSString *text;
@property (assign , nonatomic) id<YRSecondViewControllerDelegate>delegate;
@end
