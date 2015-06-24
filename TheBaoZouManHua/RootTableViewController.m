//
//  RootTableViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/24.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootTableViewController.h"

@interface RootTableViewController ()

@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    */
    
    //设置导航条的标题
    self.navigationItem.title = @"我的首页";
    //改变导航条的背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor brownColor];
    
    //添加导航条的rightBarItem
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(rightBarButtonItemAction:)];
    self.navigationItem.rightBarButtonItem = rightItem;
    rightItem.tintColor = [UIColor orangeColor];
    /*
     //添加背景图片
     //    UIImage *image = [UIImage imageNamed:@"123.png"];
     //    UIImageView *rightImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
     //    rightImage.image = image;
     //    rightItem.customView = rightImage;
     //    rightImage.userInteractionEnabled = YES;
     
     
     //创建一个轻拍手势添加到rightImage上
     //    UITapGestureRecognizer *rightTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(rightTapAction:)];
     //    [rightImage addGestureRecognizer:rightTap];
     //    [rightTap release];
     //    [rightImage release];
     //    [rightItem release];
     */
    
    
    //添加导航条的leftItem
//    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(leftBarButtonItemAction:)];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemAction:)];
    self.navigationItem.leftBarButtonItem = leftItem;
    leftItem.tintColor = [UIColor orangeColor];
    
    /*
    UIImage *image1 = [UIImage imageNamed:@"left@2x.png"];
    UIImageView *leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    leftImageView.image = image1;
    leftItem.customView = leftImageView;
    leftImageView.userInteractionEnabled = YES;
    
    //创建一个轻拍手势
    UITapGestureRecognizer *leftTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(leftBarButtonItemAction:)];
    [leftImageView addGestureRecognizer:leftTap];
    [leftTap release];
    [leftImageView release];
     */
    [leftItem release];
    
    
    
    
}
#pragma mark - itemBar 的点击事件
//刷新按钮的实现方法
- (void)rightBarButtonItemAction:(UIBarButtonItem *)rightBar
{
    //刷新
}
- (void)leftBarButtonItemAction:(UIBarButtonItem *)leftBar
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
