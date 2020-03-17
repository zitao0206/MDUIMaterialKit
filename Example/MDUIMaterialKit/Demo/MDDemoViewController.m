//
//  MDDemoViewController.m
//
//  Created by lizitao on 2020/3/6.
//  Copyright © 2020 lizitao. All rights reserved.
//

#import "MDDemoViewController.h"
#import "MDCollectionViewSmallCell.h"
#import "MDCollectionViewBigCell.h"
#import "MDCollectionViewLayout.h"
#import "MDDemoData.h"
#import "MDDemoCellItemModel.h"
#import <MDCommonKit/MDCommonKit.h>

#define ScreenWidth   self.view.frame.size.width
#define ScreenHeight  self.view.frame.size.height

#define SmallCellHeight   120
#define BigCellHeight   242
#define Cellwidth (ScreenWidth - 2) / 2.0;

@interface MDDemoViewController ()<UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) NSArray <MDDemoCellItemModel *> *items;
@end

@implementation MDDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor md_colorWithHexString:@"ffffff"];
    
    [self.view addSubview:self.collectionView];
    
    self.items = [[MDDemoData obtainDemoCellData] mutableCopy];
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.items.count;
}

//footer的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    return CGSizeMake(0, 0);
}

//header的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(0, 0);
}

//每个item的UIEdgeInsets
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

//每个item水平间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 2;
}

//每个item垂直间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 2;
}

//cell显示的内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = nil;
    NSInteger row = indexPath.row;
    if (row < self.items.count) {
        MDDemoCellItemModel *item = [self.items objectAtIndex:row];
        if (item.cellType == MDDemoSmallItemCellType) {
            cellIdentifier = @"MDCollectionViewSmallCell";
            MDCollectionViewSmallCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
            [cell refreshData:item];
            return cell;
        } else {
            cellIdentifier = @"MDCollectionViewBigCell";
            MDCollectionViewBigCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
            [cell refreshData:item];
            return cell;
        }
    }
    return [MDCollectionViewSmallCell new];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    if (row < self.items.count) {
        MDDemoCellItemModel *item = [self.items objectAtIndex:row];
        if (item.detailVCName.length > 0) {
            UIViewController *vc = [NSClassFromString(item.detailVCName) new];
            if (vc) {
                vc.title = item.descrip;
                [self.navigationController pushViewController:vc animated:YES];
            }
        }
    }
    
}

- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        MDCollectionViewLayout *layout = [[MDCollectionViewLayout alloc] init];
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor md_colorWithHexString:@"ff2c55" alpha:0.5];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[MDCollectionViewSmallCell class] forCellWithReuseIdentifier:@"MDCollectionViewSmallCell"];
        [_collectionView registerClass:[MDCollectionViewBigCell class] forCellWithReuseIdentifier:@"MDCollectionViewBigCell"];
        _collectionView.showsVerticalScrollIndicator = YES;
        _collectionView.showsHorizontalScrollIndicator = YES;
        [self.view addSubview:_collectionView];
    }
    return _collectionView;
}

@end
