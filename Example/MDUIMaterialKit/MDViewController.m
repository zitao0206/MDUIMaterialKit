//
//  MDViewController.m
//  MDUIMaterialKit
//
//  Created by lizitao on 03/16/2020.
//  Copyright (c) 2020 lizitao. All rights reserved.
//

#import "MDViewController.h"
#import <Masonry/Masonry.h>
#import "NMLDemoViewController.h"
#import "NMLRuleViewController.h"

@interface MDViewController ()
@property (nonatomic, strong) UIButton *demoBtn;
@property (nonatomic, strong) UIButton *ruleBtn;
@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.demoBtn];
    [self.demoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(200);
        make.left.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.equalTo(@40);
    }];
    [self.view addSubview:self.ruleBtn];
    [self.ruleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
          make.top.equalTo(self.demoBtn).offset(100);
          make.left.equalTo(self.view);
          make.width.equalTo(self.view);
          make.height.equalTo(@40);
    }];
}

- (void)demoBtnClickAction
{
    NMLDemoViewController *vc = [[NMLDemoViewController alloc]init];
    vc.title = @"示例展示";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)ruleBtnClickAction
{
    NMLRuleViewController *vc = [[NMLRuleViewController alloc]init];
    vc.title = @"入库方法";
    [self.navigationController pushViewController:vc animated:YES];
}

- (UIButton *)demoBtn
{
    if (!_demoBtn) {
        _demoBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_demoBtn setTitle:@"查看示例" forState:UIControlStateNormal];
        [_demoBtn addTarget:self action:@selector(demoBtnClickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _demoBtn;
}

- (UIButton *)ruleBtn
{
    if (!_ruleBtn) {
        _ruleBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_ruleBtn setTitle:@"入库方法" forState:UIControlStateNormal];
        [_ruleBtn addTarget:self action:@selector(ruleBtnClickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ruleBtn;
}

@end
