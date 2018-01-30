//
//  PushViewController.m
//  RTRootNavigationDemo
//
//  Created by WhatsXie on 2018/1/29.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "PushViewController.h"
#import "DissPushViewController.h"
#import "RTCustomNavigationBar.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Push";
    //更改导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    
    [self setupRightItem];
    [self setupBtn];
}
- (void)setupRightItem {
    UIButton *rightItemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightItemBtn setTitle:@"右键" forState:UIControlStateNormal];
    [rightItemBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightItemBtn addTarget:self action:@selector(rightBarClicked) forControlEvents:UIControlEventTouchUpInside];
    [rightItemBtn sizeToFit];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemBtn];
    
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)setupBtn {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.center = self.view.center;
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"注销推出" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushTofirst) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)pushTofirst{
    DissPushViewController *dissPushVC = [[DissPushViewController alloc] init];
    [self.rt_navigationController pushViewController:dissPushVC animated:dissPushVC complete:^(BOOL finished) {
        [self.rt_navigationController removeViewController:self];
    }];
}

- (void)rightBarClicked{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"点击右键" delegate:nil cancelButtonTitle:@"好" otherButtonTitles: nil];
    [alert show];
}

- (Class)rt_navigationBarClass {
    return [RTCustomNavigationBar class];
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
