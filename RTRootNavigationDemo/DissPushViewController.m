//
//  DissPushViewController.m
//  RTRootNavigationDemo
//
//  Created by WhatsXie on 2018/1/29.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "DissPushViewController.h"

@interface DissPushViewController ()

@end

@implementation DissPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"我的上层不见了";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupBtn];
}

- (void)setupBtn {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.center = self.view.center;
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"回到首页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(popToRoot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)popToRoot {
    [self.rt_navigationController popToRootViewControllerAnimated:YES complete:nil];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationSlide;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
