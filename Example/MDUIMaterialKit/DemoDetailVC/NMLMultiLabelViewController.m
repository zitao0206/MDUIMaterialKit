//
//  NMLMultiLabelViewController.m
//  NMLUIKit
//
//  Created by lizitao on 03/05/2020.
//  Copyright (c) 2020 lizitao. All rights reserved.
//

#import "NMLMultiLabelViewController.h"
#import "NMLMultiLabelView.h"
#import <NEViewLayout/NEViewLayout.h>
#import <NEUIKit/UIColor+NEUIKit.h>

@interface NMLMultiLabelViewController ()
@property (nonatomic, strong) NMLMultiLabelView *multiLabelView1;
@property (nonatomic, strong) NMLMultiLabelView *multiLabelView2;
@end

@implementation NMLMultiLabelViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:self.multiLabelView1];
    NSArray *arr1 = [[NSArray alloc] initWithObjects:@"杭州",@"上海",@"北京", nil];
    [self.multiLabelView1 refreshDataArray:arr1];
    
    [self.view addSubview:self.multiLabelView2];
    NSArray *arr2 = [[NSArray alloc] initWithObjects:@"杭州",@"上海",@"北京",@"南京",@"乌鲁木齐",@"哈尔滨",@"合肥",@"绍兴", @"重庆", @"昆明", @"天津", nil];
    [self.multiLabelView2 refreshDataArray:arr2];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.multiLabelView1.centerX = self.view.centerX;
    self.multiLabelView1.top = 200;
    
    self.multiLabelView2.centerX = self.view.centerX;
    self.multiLabelView2.top = 250;
}

- (NMLMultiLabelView *)multiLabelView1
{
    if (!_multiLabelView1)  {
        _multiLabelView1 = [[NMLMultiLabelView alloc]initWithConfig:^(NMLMultiLabelConfig *config) {
             config.width = 0;
             config.templateLabel.textAlignment = NSTextAlignmentCenter;
             config.templateLabel.textColor = [UIColor whiteColor];
             config.templateLabel.font = [UIFont systemFontOfSize:11 weight:UIFontWeightSemibold];
             config.templateLabel.backgroundColor = [UIColor ne_colorWithHexString:@"ffffff" alpha:0.2f];
             config.templateLabel.layer.cornerRadius = 11;
             config.templateLabel.clipsToBounds = YES;
             config.templateHeight = 22;
             config.backgroundColor = [UIColor ne_colorWithHexString:@"313131"];
             config.topSpace = 0;
             config.leftSpace = 0;
             config.additionalWidth = 14;
             config.numberOflines = 1;
        }];
    }
    return _multiLabelView1;
}

- (NMLMultiLabelView *)multiLabelView2
{
    if (!_multiLabelView2)  {
        _multiLabelView2 = [[NMLMultiLabelView alloc]initWithConfig:^(NMLMultiLabelConfig *config) {
             config.width = 200;
             config.templateLabel.textAlignment = NSTextAlignmentCenter;
             config.templateLabel.textColor = [UIColor whiteColor];
             config.templateLabel.font = [UIFont systemFontOfSize:11 weight:UIFontWeightSemibold];
             config.templateLabel.backgroundColor = [UIColor ne_colorWithHexString:@"ffffff" alpha:0.2f];
             config.templateLabel.layer.cornerRadius = 11;
             config.templateLabel.clipsToBounds = YES;
             config.templateHeight = 22;
             config.backgroundColor = [UIColor ne_colorWithHexString:@"313131"];
             config.topSpace = 0;
             config.leftSpace = 0;
             config.additionalWidth = 14;
             config.numberOflines = 0;
        }];
    }
    return _multiLabelView2;
}

@end
