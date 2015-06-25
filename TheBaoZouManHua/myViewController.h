//
//  myViewController.h
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myViewController : UIViewController

@property (nonatomic , retain) UILabel *accountLabel;//用户名
@property (nonatomic , retain) UITextField *accountText;
@property (nonatomic , retain) UILabel *passwdLabel;//密码
@property (nonatomic , retain) UITextField *passwdText;

//按钮
@property (nonatomic , retain) UIButton *registerBtn;//注册
@property (nonatomic , retain) UIButton *loginBtn;//登陆
@property (nonatomic , retain) UIButton *forgetBtn;//忘记密码

@end
