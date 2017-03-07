//
//  UIViewAnimationViewController.m
//  Animation
//
//  Created by 徐沈俊杰 on 2017/3/7.
//  Copyright © 2017年 XYBS. All rights reserved.
//

#import "UIViewAnimationViewController.h"

@interface UIViewAnimationViewController ()
@property (strong, nonatomic) UITextField *userName;
@property (strong, nonatomic) UITextField *passWord;
@end

@implementation UIViewAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.userName];
    [self.view addSubview:self.passWord];
    
    CGPoint accountCenter = self.userName.center;
    accountCenter.x += 200;
    
    CGPoint pswCenter = self.passWord.center;
    pswCenter.x += 200;
    
    [UIView animateWithDuration:0.5 delay:1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.userName.center = accountCenter;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.passWord.center = pswCenter;
        } completion:^(BOOL finished) {
            
        }];
    }];
}

#pragma mark - Setter And Getter
- (UITextField *)userName {
    if (!_userName) {
        _userName = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        _userName.backgroundColor = [UIColor redColor];
        
        CGPoint accountCenter = self.userName.center;
        accountCenter.x -= 200;
        self.userName.center = accountCenter;
    }
    return _userName;
}

- (UITextField *)passWord {
    if (!_passWord) {
        _passWord = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
        _passWord.backgroundColor = [UIColor redColor];
        
        CGPoint pswCenter = self.passWord.center;
        pswCenter.x -= 200;
        self.passWord.center = pswCenter;
    }
    return _passWord;
}

@end
