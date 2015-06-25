//
//  ForgetViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "ForgetViewController.h"

@interface ForgetViewController ()

@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"忘记密码";
    //导航条背景色
    self.navigationController.navigationBar.barTintColor = [UIColor cyanColor];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(leftItemAction:)];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"右边" style:UIBarButtonItemStylePlain target:self action:@selector(rightItemAction:)];
    self.navigationItem.rightBarButtonItem = rightItem;
    //右边按钮字体的颜色
    rightItem.tintColor = [UIColor redColor];
    [rightItem release];
    
    
}

#pragma mark - 导航条的点击事件
//导航条的左边
- (void)leftItemAction:(UIBarButtonItem *)leftItem
{
    
}
//导航条的右边
- (void)rightItemAction:(UIBarButtonItem *)rightItem
{
    
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
