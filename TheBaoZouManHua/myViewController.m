//
//  myViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//*************************   登陆    **************************

#import "myViewController.h"

#define kSpace 20

@interface myViewController ()

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //视图背景色
    self.view.backgroundColor = [UIColor clearColor];
    
    // Do any additional setup after loading the view.
    //设置导航条的标题
    self.navigationItem.title = @"登陆";
    //设置导航条的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
    //用户名
    self.accountLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 80, 100, 30)];
    self.accountLabel.text = @"用户名";
    
    self.accountText = [[UITextField alloc]initWithFrame:CGRectMake(self.accountLabel.frame.origin.x + self.accountLabel.frame.size.width + kSpace, self.accountLabel.frame.origin.y, 150, 30)];
    self.accountText.placeholder = @"请输入用户名";
    //开始编辑是清空输入框的内容
    self.accountText.clearsOnBeginEditing = YES;
    //边框
    self.accountText.borderStyle = UITextBorderStyleRoundedRect;
    //背景色
    self.accountText.backgroundColor = [UIColor lightGrayColor];
    
    //密码
    self.passwdLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.accountLabel.frame.origin.x, self.accountLabel.frame.origin.y + self.accountLabel.frame.size.height + kSpace, self.accountLabel.frame.size.width, self.accountLabel.frame.size.height)];
    self.passwdLabel.text = @"密码";
    
    self.passwdText = [[UITextField alloc]initWithFrame:CGRectMake(self.accountText.frame.origin.x, self.passwdLabel.frame.origin.y, self.accountText.frame.size.width, self.accountText.frame.size.height)];
    //占位符
    self.passwdText.placeholder = @"请输入密码";
    //开始编辑是清空输入框的内容
    self.passwdText.clearsOnBeginEditing = YES;
    //边框
    self.passwdText.borderStyle = UITextBorderStyleRoundedRect;
    //背景色
    self.passwdText.backgroundColor = [UIColor lightGrayColor];
    //文字输入显示成密码的状态
    self.passwdText.secureTextEntry = YES;
    
    
    //按钮
    //登陆
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    self.loginBtn.frame = CGRectMake(kSpace * 2, self.passwdText.frame.origin.y + self.passwdText.frame.size.height + kSpace, 60, 30);
    //loginBtn的点击事件
    [self.loginBtn addTarget:self action:@selector(loginBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //忘记密码
    self.forgetBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.forgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    self.forgetBtn.frame = CGRectMake(self.loginBtn.frame.origin.x + self.loginBtn.frame.size.width + kSpace, self.loginBtn.frame.origin.y, self.loginBtn.frame.size.width * 2 + kSpace, self.loginBtn.frame.size.height);
    //forgetBtn的点击事件
    [self.forgetBtn addTarget:self action:@selector(forgetBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    //注册
    self.registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    self.registerBtn.frame = CGRectMake(self.forgetBtn.frame.origin.x + self.forgetBtn.frame.size.width + kSpace, self.loginBtn.frame.origin.y, self.loginBtn.frame.size.width, self.loginBtn.frame.size.height);
    //registerBtn的点击事件
    [self.registerBtn addTarget:self action:@selector(registerBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountText];
    [self.view addSubview:self.passwdLabel];
    [self.view addSubview:self.passwdText];
    [self.view addSubview:self.loginBtn];
    [self.view addSubview:self.forgetBtn];
    [self.view addSubview:self.registerBtn];
    [self.passwdLabel release];
    [self.accountText release];
    [self.accountLabel release];
    [self.passwdText release];
    
    
}

#pragma mark - button点击事件的实现方法
//loginBtn的点击事件
- (void)loginBtnAction:(UIButton *)loginButton
{
    
}
//forgetBtn的点击事件
- (void)forgetBtnAction:(UIButton *)forgetButton
{
    ForgetViewController *forgetVC = [[ForgetViewController alloc]init];
    UINavigationController *forgetNV = [[UINavigationController alloc]initWithRootViewController:forgetVC];
    [self presentViewController:forgetNV animated:YES completion:nil];
}
//registerBtn的点击事件
- (void)registerBtnAction:(UIButton *)registButton
{
    RegisterViewController *registVC = [[RegisterViewController alloc]init];
    [self presentViewController:registVC animated:YES completion:nil];
}


- (void)dealloc
{
    [_accountLabel release];
    [_accountText release];
    [_passwdLabel release];
    [_passwdText release];
    [_registerBtn release];
    [_loginBtn release];
    [_forgetBtn release];
    [super dealloc];
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
