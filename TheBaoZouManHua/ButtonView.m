//
//  ButtonView.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/27.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "ButtonView.h"
#define iNstance 50
#define buttonWith 50
@implementation ButtonView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //添加按钮
        _button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        _button1.frame = CGRectMake(0, 0, buttonWith, self.frame.size.height);
//        _button1.backgroundColor = [UIColor blueColor];
        
        _button2 = [UIButton buttonWithType:UIButtonTypeSystem];
        _button2.frame = CGRectMake(buttonWith + iNstance, 0, buttonWith, self.frame.size.height);
//        _button2.backgroundColor = [UIColor blueColor];
        
        _button3 = [UIButton buttonWithType:UIButtonTypeSystem];
        _button3.frame = CGRectMake(_button2.frame.origin.x + buttonWith + iNstance, 0, buttonWith, self.frame.size.height);
        
        _button4 = [UIButton buttonWithType:UIButtonTypeSystem];
        _button4.frame = CGRectMake(_button3.frame.origin.x + buttonWith + iNstance, 0, buttonWith, self.frame.size.height);
        
        
        
        //添加按钮的点击事件
        [self.button1 addTarget:self action:@selector(button1Action:) forControlEvents:UIControlEventTouchUpInside];
        [self.button2 addTarget:self action:@selector(button2Action:) forControlEvents:UIControlEventTouchUpInside];
        [self.button3 addTarget:self action:@selector(button3Action:) forControlEvents:UIControlEventTouchUpInside];
        [self.button4 addTarget:self action:@selector(button4Action:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_button1];
        [self addSubview:_button2];
        [self addSubview:_button3];
        [self addSubview:_button4];
        self.backgroundColor = [UIColor cyanColor];
    }
    return self;
}

#pragma mark - button 的命名方法
- (void)setWithButtonOneName:(NSString *)name
{
    [_button1 setTitle:name forState:UIControlStateNormal];
//    NSLog(@"反弹会对人体");
}

- (void)setWithButtonTwoName:(NSString *)name
{
    [_button2 setTitle:name forState:UIControlStateNormal];
}

- (void)setWithButtonThreeName:(NSString *)name
{
    [_button3 setTitle:name forState:UIControlStateNormal];
}

-  (void)setWithButtonFourName:(NSString *)name
{
    [_button4 setTitle:name forState:UIControlStateNormal];
}

- (void)setWithButtonName:(NSString *)name1
                      two:(NSString *)name2
                    three:(NSString *)name3
                     four:(NSString *)name4
{
 
    [_button1 setTitle:name1 forState:UIControlStateNormal];
//    NSLog(@"%@", name1);
    [_button2 setTitle:name2 forState:UIControlStateNormal];
    [_button3 setTitle:name3 forState:UIControlStateNormal];
    [_button4 setTitle:name4 forState:UIControlStateNormal];
    NSLog(@"%@", name4);
//    NSLog(@"又被坑了");
}


#pragma mark - button 的点击事件
- (void)button1Action:(UIButton *)sender
{
    
}

- (void)button2Action:(UIButton *)sender
{
    
}

- (void)button3Action:(UIButton *)sender
{
    
}

- (void)button4Action:(UIButton *)sender
{
    
    
}

- (void)dealloc
{
    [_button1 release];
    [_button2 release];
    [_button3 release];
    [_button4 release];
    [super dealloc];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
