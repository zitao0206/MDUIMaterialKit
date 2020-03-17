//
//  NMLDemoData.m
//  NMLUIKit_Example
//
//  Created by lizitao on 2020/3/6.
//  Copyright © 2020 lizitao. All rights reserved.
//

#import "NMLDemoData.h"
#import "NMLDemoCellItemModel.h"

@implementation NMLDemoData
+ (NSArray <NMLDemoCellItemModel *> *)obtainDemoCellData
{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    {
        NMLDemoCellItemModel *item = [NMLDemoCellItemModel new];
        item.cellType = NMLKDemoBigItemCellType;
        item.className = @"MDFoldNumberView";
        item.imageName = @"md_fold_number";
        item.imageType = @"mov";
        item.author = @"Leon";
        item.detailVCName = @"MDFoldNumberViewController";
        item.descrip = @"滚动的数字";
        [array addObject:item];
    }
    {
        NMLDemoCellItemModel *item = [NMLDemoCellItemModel new];
        item.cellType = NMLKDemoSmallItemCellType;
        item.className = @"MDMultiLabelView";
        item.imageName = @"md_multi_label";
        item.imageType = @"png";
        item.author = @"Leon";
        item.detailVCName = @"MDMultiLabelViewController";
        item.descrip = @"多标签展示";
        [array addObject:item];
    }
    {
         NMLDemoCellItemModel *item = [NMLDemoCellItemModel new];
         item.cellType = NMLKDemoSmallItemCellType;
         item.className = @"MDImageTextView";
         item.imageName = @"md_image_text";
         item.imageType = @"png";
         item.author = @"Leon";
         item.detailVCName = @"MDImageTextViewController";
         item.descrip = @"多功能显示标签";
         [array addObject:item];
     }
    
    
    return array;
}
@end
