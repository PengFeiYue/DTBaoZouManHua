//
//  CellViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/26.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//******************* cell详情展示页面 **************

#import "CellViewController.h"
#import "ButtonView.h"

@interface CellViewController ()

@end

@implementation CellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"cell详情展示页面";
    
    ButtonView *btnView = [[ButtonView alloc]initWithFrame:CGRectMake(0, 626, self.view.frame.size.width, 50)];
    [btnView setWithButtonName:@"你*们" two:@"分享" three:@"收藏" four:@"评论"];
 
//    btnView.backgroundColor = [UIColor redColor];
    [self.view addSubview:btnView];
    [btnView.button4 addTarget:self action:@selector(button4Action:) forControlEvents:UIControlEventTouchUpInside];
    
    
}


- (void)button4Action:(UIButton *)sender
{
    CommentViewController *commentVC = [[CommentViewController alloc]init];
    [self presentViewController:commentVC animated:YES completion:nil];
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
