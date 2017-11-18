//
//  TextViewController.m
//  iOS_tutorial
//
//  Created by 张智超 on 2017/11/18.
//  Copyright © 2017年 张智超. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"UITextView";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 84, self.view.frame.size.width - 40, 48)];
    myLabel.text = @"念奴娇·赤壁怀古";
    myLabel.textColor = [UIColor darkTextColor];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.font = [UIFont systemFontOfSize:18];
    myLabel.numberOfLines = 2;
    myLabel.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
    [self.view addSubview:myLabel];
    
    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake(20, 152, self.view.frame.size.width - 40, 220)];
    myTextView.text = @"大江东去，浪淘尽，千古风流人物。故垒西边，人道是，三国周郎赤壁。乱石穿空，惊涛拍岸，卷起千堆雪。江山如画，一时多少豪杰。遥想公瑾当年，小乔初嫁了，雄姿英发。羽扇纶巾，谈笑间，樯橹灰飞烟灭。故国神游，多情应笑我，早生华发。人生如梦，一樽还酹江月。";
    myTextView.textColor = [UIColor darkTextColor];
    myTextView.editable = NO;
    myTextView.selectable = YES;
    myTextView.font = [UIFont systemFontOfSize:16];
    myTextView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
    [self.view addSubview:myTextView];
    
//    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake(20, 152, self.view.frame.size.width - 40, 220)];
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    paragraphStyle.lineSpacing = 10;
//    NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor darkTextColor],
//                                 NSFontAttributeName:[UIFont systemFontOfSize:16],
//                                 NSParagraphStyleAttributeName: paragraphStyle
//                                 };
//    myTextView.attributedText = [[NSAttributedString alloc] initWithString:@"大江东去，浪淘尽，千古风流人物。故垒西边，人道是，三国周郎赤壁。乱石穿空，惊涛拍岸，卷起千堆雪。江山如画，一时多少豪杰。遥想公瑾当年，小乔初嫁了，雄姿英发。羽扇纶巾，谈笑间，樯橹灰飞烟灭。故国神游，多情应笑我，早生华发。人生如梦，一樽还酹江月。" attributes:attributes];
//    [self.view addSubview:myTextView];
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
