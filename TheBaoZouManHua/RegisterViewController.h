//
//  RegisterViewController.h
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (nonatomic , retain) UILabel *accountLabel;//用户名
@property (nonatomic , retain) UITextField *accountText;
@property (nonatomic , retain) UILabel *passwdLabel;//密码
@property (nonatomic , retain) UITextField *passwdText;
@property (nonatomic , retain) UILabel *apasswdLabel;//确认密码
@property (nonatomic , retain) UITextField *apasswdText;
@property (nonatomic , retain) UIButton *saveBtn;//确认按钮
@property (nonatomic , retain) UIButton *cancelBtn;//取消按钮
@property (nonatomic , retain) UIImageView *headerImage;//头像

@end
