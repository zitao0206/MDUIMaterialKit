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
        item.className = @"NMLFoldNumberView";
        item.imageName = @"nml_fold_number";
        item.imageType = @"mov";
        item.author = @"lizitao";
        item.detailVCName = @"NMLFoldNumberViewController";
        item.descrip = @"滚动的数字";
        [array addObject:item];
    }
    {
        NMLDemoCellItemModel *item = [NMLDemoCellItemModel new];
        item.cellType = NMLKDemoSmallItemCellType;
        item.className = @"NMLMultiLabelView";
        item.imageName = @"nml_multi_label";
        item.imageType = @"png";
        item.author = @"lizitao";
        item.detailVCName = @"NMLMultiLabelViewController";
        item.descrip = @"多标签展示";
        [array addObject:item];
    }
    {
         NMLDemoCellItemModel *item = [NMLDemoCellItemModel new];
         item.cellType = NMLKDemoSmallItemCellType;
         item.className = @"NMLImageTextView";
         item.imageName = @"nml_image_text";
         item.imageType = @"png";
         item.author = @"lizitao";
         item.detailVCName = @"NMLImageTextViewController";
         item.descrip = @"多功能显示标签";
         [array addObject:item];
     }
    
    
    return array;
}
@end
