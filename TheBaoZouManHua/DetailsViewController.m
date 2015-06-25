//
//  DetailsViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
    // Do any additional setup after loading the view.
    
    
    self.headerImage = [[UIImageView alloc]initWithFrame:CGRectMake(120, 80, 150, 150)];
    self.headerImage.backgroundColor = [UIColor blueColor];
    //设置圆角属性
    self.headerImage.layer.masksToBounds = YES;
    self.headerImage.layer.cornerRadius = 60;
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height - 300)];
    //tableView 的背景色
    self.tableView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:self.headerImage];
    [self.view addSubview:self.tableView];
    [self.headerImage release];
    
     
    self.navigationItem.title = @"我的资料";
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"首页" style:UIBarButtonItemStylePlain target:self action:@selector(leftItemAction:)];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
    
}

#pragma mark - barItem 的点击事件
- (void)leftItemAction:(UIBarButtonItem *)leftItem
{
    NSLog(@"首页");
}

- (void)dealloc
{
    [_headerImage release];
    [_tableView release];
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
