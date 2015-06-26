//
//  RootViewController.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UITableViewDataSource , UITableViewDelegate , UIScrollViewDelegate>
{
    NSArray *_imageArray;//用来存放图片的数组
    NSTimer *_myTimer;//定时器
    
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //图片滚动区
    self.myScrowView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
    
    self.myScrowView.backgroundColor = [UIColor blueColor];
    self.myScrowView.pagingEnabled = YES;//以页为单位滑动，即自动到下一页的开始边界
    self.myScrowView.showsVerticalScrollIndicator = NO;
    self.myScrowView.showsHorizontalScrollIndicator = NO;//隐藏垂直和水平显示条
//    self.myScrowView.bounces = NO;
    
    
    //初始化一个存放图片的数组
    _imageArray = [NSArray arrayWithObjects:[UIImage  imageNamed:@"image1.jpg"], [UIImage imageNamed:@"image2.jpg"], [UIImage imageNamed:@"image3.png"], [UIImage imageNamed:@"image4.jpg"], nil];
   

    for (int i = 0; i < [_imageArray count]; i ++) {
         UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, self.myScrowView.frame.size.height)];
        imageView1.image = [_imageArray objectAtIndex:i];
        [self.myScrowView addSubview:imageView1];
         [imageView1 release];

    }
     //给ScrollView 设置contentSize(高度为0 代表不允许垂直方向移动)
    self.myScrowView.contentSize = CGSizeMake(self.view.frame.size.width * 4, 0);
    //设置myScrowView的代理
    self.myScrowView.delegate = self;
    
    

    //创建UIPageControl
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, self.myScrowView.frame.size.height - 30, self.view.frame.size.width, 30)];
    //背景色
//    self.pageControl.backgroundColor = [UIColor redColor];
    //设置点的个数
    self.pageControl.numberOfPages = 4;
    //把某个点设置为当前点????????????????????????????????????????????????
//    self.pageControl.currentPage = 1;
    //给当前点设置颜色
    self.pageControl.currentPageIndicatorTintColor = [UIColor brownColor];
    //其他点设置颜色
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.enabled = YES;//点击pageControl 滚动图片
    
    //给PageControl设置点击事件
    [self.pageControl addTarget:self action:@selector(pageControlAction:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.myScrowView];
    [self.view addSubview:self.pageControl];
    [self.myScrowView release];
    [self.pageControl release];
    //添加定时器
    
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(scrollToNextPage:) userInfo:nil repeats:YES];
    
    
    //ScrollView
    
   
/*****************************************************************************************************/
    //tabView
    self.tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, self.myScrowView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - self.myScrowView.frame.size.height)];
    self.tabView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.tabView];
    [self.tabView release];
    
    self.tabView.delegate = self;
    self.tabView.dataSource = self;
    
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
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemAction:)];
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

//定时器
- (void)scrollToNextPage:(NSTimer *)sender
{
    int pageNumber = (int)self.pageControl.currentPage;
    CGSize viewSize =  self.myScrowView.frame.size;
//    CGSize viewSize = CGSizeMake(self.myScrowView.frame.size.width, 250) ;
    CGRect rect = CGRectMake((pageNumber + 1) * viewSize.width, 0, viewSize.width, viewSize.height);
    [self.myScrowView scrollRectToVisible:rect animated:YES];
    if (pageNumber == 3) {
        CGRect newRect = CGRectMake(viewSize.width, 0, viewSize.width, viewSize.height);
        [self.myScrowView scrollRectToVisible:newRect animated:NO];
    }
    pageNumber ++;
    
}

- (void)pageControlAction:(UIPageControl *)sender
{
    self.myScrowView.contentOffset = CGPointMake(sender.currentPage * self.view.frame.size.width, 0);
}

#pragma mark - UIScrollView  Delegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //先找到偏移量，再根据偏移量设置currentPage
    self.pageControl.currentPage = self.myScrowView.contentOffset.x / self.view.frame.size.width;
}

#pragma mark - itemBar 的点击事件
//刷新按钮的实现方法
- (void)rightBarButtonItemAction:(UIBarButtonItem *)rightBar
{
    //刷新
}
- (void)leftBarButtonItemAction:(UIBarButtonItem *)leftBar
{
    //跳转到下一个页面
    SetViewController *setVC = [[SetViewController alloc]init];
    /*  
     UIModalTransitionStyleCoverVertical ,
     UIModalTransitionStyleFlipHorizontal,
     UIModalTransitionStyleCrossDissolve,
     UIModalTransitionStylePartialCurl
     loadVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
     [self presentViewController:loadVC animated:YES completion:nil];
     
     */
    [self.navigationController pushViewController:setVC animated:YES];
}

#pragma mark - Table view data source
//每个分部cell的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 15;
}
//有几个分部
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return 1;
}

//设置cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //判断是否是第一行的第一个cell
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            
            return 100;
        }
    }
    
    return 30;
}



//cell上数据的显示方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //准备cell标示符(static )
    static NSString *cellID = @"cellID";
    
    //从仓库里面去拿带有该标示符的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    //如果没有拿到，自己创建，并把标示符给贴上去
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    
    
    cell.textLabel.text = @"测试数据";
    
    return cell;
}



- (void)dealloc
{
    [_myScrowView release];
    [_tabView release];
    [super dealloc];
}

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
