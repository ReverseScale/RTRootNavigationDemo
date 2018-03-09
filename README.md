# RTRootNavigationDemo

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) ![](https://img.shields.io/badge/download-9.9MB-yellow.svg) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

[EN](#Requirements) | [中文](#中文说明)

Standalone Navigation Bar Library RTRootNavigationController Example Usage 🤖

> Maybe you have seen many different navigation bar, maybe you need to control the status of each navigation bar alone, maybe you just want more elegant use of custom navigation bar.

Great god rickytan RTRootNavigationController can help you（https://github.com/rickytan/RTRootNavigationController）

### 🤖 Requirements

* iOS 7.0+
* Xcode 7.0+


### 🎨 Why test the UI?

| 1.Presentation page | 2.Presentation page | 3.Presentation page |
| ------------- | ------------- | ------------- | 
| ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/37702609.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/82885530.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/44393185.jpg) | 
| Hide Navigation Bar | Custom Navigation Bar | Logout Jump |


### 🎯 Installation

#### Install

In * iOS *, you need to add in Podfile.
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'RTRootNavigationController'
```


### 🛠 Configuration

#### Setup

First, let's create a base class that manages some of the common custom functions, such as the return button.

```Objective-C
#import <UIKit/UIKit.h>
#import <RTRootNavigationController.h>

@interface BaseViewController : UIViewController

@end
```

Then, set rootViewController in 'AppDelegate'

```Objective-C
self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
ViewController *viewController = [[ViewController alloc] init];
RTRootNavigationController *rootViewController1 = [[RTRootNavigationController alloc] initWithRootViewController:viewController];
_window.rootViewController = rootViewController1;
_window.backgroundColor = [UIColor whiteColor];
[_window makeKeyAndVisible];
```

#### Common operation

Push operation

```Objective-C
PushViewController *vc1 = [[PushViewController alloc] init];
// Pay attention to the time to push rt_navigation push out
[self.rt_navigationController pushViewController:vc1 animated:YES complete:nil];
```

Return to operation

```Objective-C
[self.rt_navigationController popViewControllerAnimated:YES];
```

Set custom return button styles in base classes

```Objective-C
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
```

Set right button

```Objective-C
- (void)setupRightItem {
    UIButton *rightItemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightItemBtn setTitle:@"右键" forState:UIControlStateNormal];
    [rightItemBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightItemBtn addTarget:self action:@selector(rightBarClicked) forControlEvents:UIControlEventTouchUpInside];
    [rightItemBtn sizeToFit];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemBtn];
    
    self.navigationItem.rightBarButtonItem = rightItem;
}
```

Custom Navigation Bar Call, Prerequisites To prepare a custom View - RTCustomNavigationBar that inherits from 'UINavigationBar'

```Objective-C
- (Class)rt_navigationBarClass {
    return [RTCustomNavigationBar class];
}
```

Hide the status bar

```Objective-C
- (void)popToRoot {
    [self.rt_navigationController popToRootViewControllerAnimated:YES complete:nil];
}
- (BOOL)prefersStatusBarHidden {
    return YES;
}
```

### ⚖ License

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### 😬 Contributions

* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io

---
# 中文说明

独立导航栏库 RTRootNavigationController 使用示例 🤖

> 也许你见过许多不太一样的导航栏，也许你需要单独控制每一个导航栏的状态，也许你只想更优雅的使用自定义导航栏。

大神 rickytan 的 RTRootNavigationController可以帮到你（https://github.com/rickytan/RTRootNavigationController）

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) ![](https://img.shields.io/badge/download-9.9MB-yellow.svg) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 


### 🤖 要求

* iOS 7.0+
* Xcode 7.0+


### 🎨 测试 UI 什么样子？

|1.展示页 |2.展示页 |3.展示页 |
| ------------- | ------------- | ------------- | 
| ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/37702609.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/82885530.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-1-30/44393185.jpg) | 
| 隐藏导航栏 | 自定义导航栏 | 注销跳转 | 


### 🎯 安装方法

#### 安装

在 *iOS*, 你需要在 Podfile 中添加.
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'RTRootNavigationController'
```


### 🛠 配置

#### 初步设置

首先，让我们创建一个基类，用来管理一些共用的自定义功能，如返回按钮等。

```Objective-C
#import <UIKit/UIKit.h>
#import <RTRootNavigationController.h>

@interface BaseViewController : UIViewController

@end
```

然后，在 'AppDelegate' 中设置 rootViewController

```Objective-C
self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
ViewController *viewController = [[ViewController alloc] init];
RTRootNavigationController *rootViewController1 = [[RTRootNavigationController alloc] initWithRootViewController:viewController];
_window.rootViewController = rootViewController1;
_window.backgroundColor = [UIColor whiteColor];
[_window makeKeyAndVisible];
```

#### 常用操作

Push 操作

```Objective-C
PushViewController *vc1 = [[PushViewController alloc] init];
//注意这里push的时候需要使用rt_navigation push出去
[self.rt_navigationController pushViewController:vc1 animated:YES complete:nil];
```

返回操作

```Objective-C
[self.rt_navigationController popViewControllerAnimated:YES];
```

在基类中设置自定义返回按钮样式

```Objective-C
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
```

设置右侧按钮

```Objective-C
- (void)setupRightItem {
    UIButton *rightItemBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightItemBtn setTitle:@"右键" forState:UIControlStateNormal];
    [rightItemBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightItemBtn addTarget:self action:@selector(rightBarClicked) forControlEvents:UIControlEventTouchUpInside];
    [rightItemBtn sizeToFit];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemBtn];
    
    self.navigationItem.rightBarButtonItem = rightItem;
}
```

自定义导航栏调用，前提要准备一个继承自 'UINavigationBar' 的自定义 View —— RTCustomNavigationBar

```Objective-C
- (Class)rt_navigationBarClass {
    return [RTCustomNavigationBar class];
}
```

隐藏状态栏

```Objective-C
- (void)popToRoot {
    [self.rt_navigationController popToRootViewControllerAnimated:YES complete:nil];
}
- (BOOL)prefersStatusBarHidden {
    return YES;
}
```

### ⚖ 协议

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### 😬 联系

* 微信 : WhatsXie
* 邮件 : ReverseScale@iCloud.com
* 博客 : https://reversescale.github.io
