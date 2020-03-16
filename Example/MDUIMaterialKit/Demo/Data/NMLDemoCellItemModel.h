//
//  NMLDemoCellItemModel.h
//  NMLUIKit_Example
//
//  Created by lizitao on 2020/3/6.
//  Copyright © 2020 lizitao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, NMLKDemoItemCellType) {
    NMLKDemoSmallItemCellType, //展示图片或者gif
    NMLKDemoBigItemCellType, //展示mp4视频
};

@interface NMLDemoCellItemModel : NSObject
@property (nonatomic, assign) NMLKDemoItemCellType cellType;
@property (nonatomic, copy) NSString *className; //控件类名
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *imageType;//mp4
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *detailVCName; //测试代码的VC
@property (nonatomic, copy) NSString *descrip; //说明

@end


NS_ASSUME_NONNULL_END
