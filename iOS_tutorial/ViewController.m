//
//  ViewController.m
//  iOS_tutorial
//
//  Created by 张智超 on 16/3/9.
//  Copyright © 2016年 张智超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"我是标题";
    self.view.backgroundColor = [UIColor whiteColor];
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, 120)];
    myLabel.text = @"这是多行的文字。这是多行的文字。这是多行的文字。这是多行的文字。这是多行的文字。这是多行的文字。这是多行的文字。这是多行的文字。";
    myLabel.textColor = [UIColor blueColor];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.font = [UIFont systemFontOfSize:17];
    myLabel.numberOfLines = 2;
    myLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:myLabel];
    
    UIImageView *myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 160, 200, 200)];
    myImageView.image = [UIImage imageNamed:@"test_image"];
    myImageView.contentMode = UIViewContentModeScaleAspectFill;
    myImageView.layer.cornerRadius = 6;
    myImageView.layer.masksToBounds = YES;
    [self.view addSubview:myImageView];
    
    UIButton *myButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 380, 150, 44)];
    [myButton setTitle:@"按钮的文字" forState:UIControlStateNormal];
    [myButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    [myButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [myButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    //[myButton setBackgroundColor:[UIColor blueColor]];
    [myButton setBackgroundImage:[UIImage imageNamed:@"button_blue"] forState:UIControlStateNormal];
    [myButton setBackgroundImage:[UIImage imageNamed:@"button_orange"] forState:UIControlStateHighlighted];
    [myButton.layer setMasksToBounds:YES];
    [myButton.layer setCornerRadius:6];
    [self.view addSubview:myButton];
    
    UIButton *anotherButton = [[UIButton alloc] initWithFrame:CGRectMake(190, 380, 165, 44)];
    [anotherButton setTitle:@"别点我" forState:UIControlStateNormal];
    [anotherButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 8, 0, 0)];
    [anotherButton setContentEdgeInsets:UIEdgeInsetsMake(0, -12, 0, 0)];
    [anotherButton setImage:[UIImage imageNamed:@"ic_diamond"] forState:UIControlStateNormal];
    [anotherButton setImage:[UIImage imageNamed:@"ic_diamond"] forState:UIControlStateHighlighted];
    [anotherButton setBackgroundImage:[UIImage imageNamed:@"button_blue"] forState:UIControlStateNormal];
    [anotherButton setBackgroundImage:[UIImage imageNamed:@"button_orange"] forState:UIControlStateHighlighted];
    [anotherButton.layer setMasksToBounds:YES];
    [anotherButton.layer setCornerRadius:6];
    [self.view addSubview:anotherButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
