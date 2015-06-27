//
//  ButtonView.h
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/27.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonView : UIView

@property (nonatomic , retain) UIButton *button1;
@property (nonatomic , retain) UIButton *button2;
@property (nonatomic , retain) UIButton *button3;
@property (nonatomic , retain) UIButton *button4;



- (void)setWithButtonOneName:(NSString *)name;
- (void)setWithButtonTwoName:(NSString *)name;
- (void)setWithButtonThreeName:(NSString *)name;
- (void)setWithButtonFourName:(NSString *)name;
- (void)setWithButtonName:(NSString *)name1
                      two:(NSString *)name2
                    three:(NSString *)name3
                     four:(NSString *)name4;

@end
