//
//  ViewController.m
//  RTRootNavigationDemo
//
//  Created by WhatsXie on 2018/1/29.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Demo";
    self.navigationController.navigationBarHidden = YES;
#if RT_INTERACTIVE_PUSH
    self.rt_navigationController.rt_enableInteractivePush = YES;
#endif
    [self setupBtn];
}

- (void)setupBtn {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.center = self.view.center;
    button.backgroundColor = [UIColor purpleColor];
    [button setTitle:@"推出" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushTofirst) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)pushTofirst {
    PushViewController *vc1 = [[PushViewController alloc] init];
    //注意这里push的时候需要使用rt_navigation push出去
    [self.rt_navigationController pushViewController:vc1 animated:YES complete:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
