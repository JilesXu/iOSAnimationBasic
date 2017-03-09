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
@property (strong, nonatomic) UITextField *verify;
@end

@implementation UIViewAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.userName];
    [self.view addSubview:self.passWord];
    [self.view addSubview:self.verify];
    
    
    CGPoint accountCenter = self.userName.center;
    accountCenter.x += 200;
    
    CGPoint pswCenter = self.passWord.center;
    pswCenter.x += 200;
    
    CGPoint verifyCenter = self.passWord.center;
    verifyCenter.x += 200;
    
//    [UIView animateWithDuration:0.5 delay:1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        self.userName.center = accountCenter;
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat  animations:^{
//            self.passWord.center = pswCenter;
//        } completion:^(BOOL finished) {
//            
//        }];
//    }];
    
    [UIView animateWithDuration:0.5 delay:1 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.verify.center = verifyCenter;
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark - Setter And Getter
- (UITextField *)userName {
    if (!_userName) {
        _userName = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        _userName.backgroundColor = [UIColor redColor];
        
        CGPoint accountCenter = _userName.center;
        accountCenter.x -= 200;
        _userName.center = accountCenter;
    }
    return _userName;
}

- (UITextField *)passWord {
    if (!_passWord) {
        _passWord = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
        _passWord.backgroundColor = [UIColor redColor];
        
        CGPoint pswCenter = _passWord.center;
        pswCenter.x -= 200;
        _passWord.center = pswCenter;
    }
    return _passWord;
}

- (UITextField *)verify {
    if (!_verify) {
        _verify = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
        _verify.backgroundColor = [UIColor redColor];
        
        CGPoint verifyCenter = _verify.center;
        verifyCenter.x -= 200;
        _verify.center = verifyCenter;
    }
    return _verify;
}

@end
