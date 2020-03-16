//
//  NMLImageTextViewController.m
//  NMLUIKit
//
//  Created by lizitao on 03/05/2020.
//  Copyright (c) 2020 lizitao. All rights reserved.
//

#import "NMLImageTextViewController.h"
#import "NMLImageTextView.h"
#import <NEViewLayout/NEViewLayout.h>
#import <NEUIKit/UIColor+NEUIKit.h>

@interface NMLImageTextViewController ()
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) NMLImageTextView *imageTextView1;
@property (nonatomic, strong) NMLImageTextView *imageTextView2;
@property (nonatomic, strong) NMLImageTextView *imageTextView3;
@end

@implementation NMLImageTextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.contentView = [[UIView alloc]initWithFrame:CGRectMake(0, 100, self.view.width, 300)];
    self.contentView.backgroundColor = [UIColor ne_colorWithHexString:@"777777" alpha:0.9];
    [self.view addSubview:self.contentView];

    [self.contentView addSubview:self.imageTextView1];
    [self.contentView addSubview:self.imageTextView2];
    [self.contentView addSubview:self.imageTextView3];
     
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.imageTextView1.top = 100;
    self.imageTextView1.left = 60;
    
     
    self.imageTextView2.top = 100;
    self.imageTextView2.left = self.imageTextView1.right + 30;
    
    self.imageTextView3.top = 110;
    self.imageTextView3.left = self.imageTextView2.right + 30;
   
}

- (void)imageTextViewAction1
{
    self.imageTextView3.text = @"贵普通普通";
}

- (void)imageTextViewAction2
{
    self.imageTextView3.text = @"普通贵宾";
}

- (void)imageTextViewAction3
{
    self.imageTextView3.text = @"普通";
}

- (NMLImageTextView *)imageTextView1
{
    if (!_imageTextView1) {
        _imageTextView1 = [[NMLImageTextView alloc]initWithTarget:self action:@selector(imageTextViewAction1)];
        _imageTextView1.backgroundColor = [UIColor ne_colorWithHexString:@"ffffff" alpha:0.3];
        [_imageTextView1 setImage:[UIImage imageNamed:@"nml_bgm_control_next"] withAdapted:NO];
        _imageTextView1.size = CGSizeMake(80, 80);
    }
    return _imageTextView1;
}

- (NMLImageTextView *)imageTextView2
{
    if (!_imageTextView2) {
        _imageTextView2 = [[NMLImageTextView alloc]initWithTarget:self action:@selector(imageTextViewAction2)];
        _imageTextView2.size = CGSizeMake(80, 80);
        [_imageTextView2 setImage:[UIImage imageNamed:@"nml_bgm_control_pause"] withAdapted:YES];
    }
    return _imageTextView2;
}

- (NMLImageTextView *)imageTextView3
{
    if (!_imageTextView3) {
        _imageTextView3 = [[NMLImageTextView alloc]initWithTarget:self action:@selector(imageTextViewAction3)];
        _imageTextView3.size = CGSizeMake(96, 70);
        [_imageTextView3 setBackgroundImage:[UIImage imageNamed:@"nml_live_party_vip_accept"]];
        _imageTextView3.text = @"贵宾";
//        _imageTextView3.textAdapted = YES;
        _imageTextView3.label.font = [UIFont systemFontOfSize:16];
        _imageTextView3.label.textColor = [UIColor ne_colorWithHexString:@"ae5300"];
        _imageTextView3.labelOffset = CGPointMake(0, -5);
    }
    return _imageTextView3;
}

@end
