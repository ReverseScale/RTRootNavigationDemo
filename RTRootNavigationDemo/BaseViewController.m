//
//  BaseViewController.m
//  RTRootNavigationDemo
//
//  Created by WhatsXie on 2018/1/29.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIBarButtonItem *)customBackItemWithTarget:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"       \n       " forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"icon_backImage"] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
