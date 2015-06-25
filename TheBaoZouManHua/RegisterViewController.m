//
//  RegisterViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RegisterViewController.h"
#define kSpace 20

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //视图背景色
    self.view.backgroundColor = [UIColor cyanColor];
    // Do any additional setup after loading the view.
    
    
    self.headerImage = [[UIImageView alloc]initWithFrame:CGRectMake(150, 50, 80, 80)];
    self.headerImage.backgroundColor = [UIColor blueColor];
    //设置圆角属性
    self.headerImage.layer.masksToBounds = YES;
    self.headerImage.layer.cornerRadius = 35;
    
    //用户名
    self.accountLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 180, 100, 30)];
    self.accountLabel.text = @"用户名";
    
    self.accountText = [[UITextField alloc]initWithFrame:CGRectMake(self.accountLabel.frame.origin.x + self.accountLabel.frame.size.width + kSpace, self.accountLabel.frame.origin.y, 150, 30)];
    //占位符
    self.accountText.placeholder = @"请输入用户名";
    //边框
    self.accountText.borderStyle = UITextBorderStyleRoundedRect;
    //背景色
    self.accountText.backgroundColor = [UIColor lightGrayColor];
    
    //密码
    self.passwdLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.accountLabel.frame.origin.x , self.accountLabel.frame.origin.y + self.accountLabel.frame.size.height + kSpace, self.accountLabel.frame.size.width, self.accountLabel.frame.size.height)];
    self.passwdLabel.text = @"密码";
    
    self.passwdText = [[UITextField alloc]initWithFrame:CGRectMake(self.accountText.frame.origin.x , self.passwdLabel.frame.origin.y, self.accountText.frame.size.width, self.accountText.frame.size.height)];
    //占位符
    self.passwdText.placeholder = @"请输入密码";
    //边框
    self.passwdText.borderStyle = UITextBorderStyleRoundedRect;
    //背景色
    self.passwdText.backgroundColor = [UIColor lightGrayColor];
    //输入是显示成密码的状态
    self.passwdText.secureTextEntry = YES;
    
    //确认密码
    self.apasswdLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.accountLabel.frame.origin.x , self.passwdLabel.frame.origin.y + self.passwdLabel.frame.size.height + kSpace, self.passwdLabel.frame.size.width, self.passwdLabel.frame.size.height)];
    self.apasswdLabel.text = @"确认密码";
    
    self.apasswdText = [[UITextField alloc]initWithFrame:CGRectMake(self.passwdText.frame.origin.x , self.apasswdLabel.frame.origin.y, self.passwdText.frame.size.width, self.passwdText.frame.size.height)];
    //占位符
    self.apasswdText.placeholder = @"请确认密码";
    //边框
    self.apasswdText.borderStyle = UITextBorderStyleRoundedRect;
    //背景色
    self.apasswdText.backgroundColor = [UIColor lightGrayColor];
    //输入是显示成密码的状态
    self.apasswdText.secureTextEntry = YES;
    
    
    //按钮
    //确认按钮
    self.saveBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.saveBtn setTitle:@"保存" forState:UIControlStateNormal];
    self.saveBtn.frame = CGRectMake(self.apasswdLabel.frame.origin.x, self.apasswdLabel.frame.origin.y + self.apasswdLabel.frame.size.height + kSpace, 60, 30);
    //确认按钮点击事件
    [self.saveBtn addTarget:self action:@selector(saveBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //取消按钮
    self.cancelBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    self.cancelBtn.frame = CGRectMake(self.apasswdText.frame.origin.x, self.saveBtn.frame.origin.y, self.saveBtn.frame.size.width, self.saveBtn.frame.size.height);
    //取消按钮点击事件
    [self.cancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:self.headerImage];
    [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountText];
    [self.view addSubview:self.passwdLabel];
    [self.view addSubview:self.passwdText];
    [self.view addSubview:self.apasswdLabel];
    [self.view addSubview:self.apasswdText];
    [self.view addSubview:self.saveBtn];
    [self.view addSubview:self.cancelBtn];
    [self.apasswdText release];
    [self.apasswdLabel release];
    [self.passwdText release];
    [self.passwdLabel release];
    [self.accountText release];
    [self.accountLabel release];
    
    
    
    
    
}
#pragma mark - button 点击事件
//确认按钮点击事件
- (void)saveBtnAction:(UIButton *)saveButton
{
    DetailsViewController *detailVC = [[DetailsViewController alloc]init];
    
    UINavigationController *detailNV = [[UINavigationController alloc]initWithRootViewController:detailVC];
    
    [self presentViewController:detailNV animated:YES completion:nil];
}
//取消按钮点击事件
- (void)cancelBtnAction:(UIButton *)cancelButton
{
    
}




- (void)dealloc
{
    [_accountLabel release];
    [_accountText release];
    [_passwdLabel release];
    [_passwdText release];
    [_apasswdLabel release];
    [_apasswdText release];
    [_saveBtn release];
    [_cancelBtn release];
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
