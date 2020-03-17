//
//  MDDemoCellItemModel.h
//  MDUIKit_Example
//
//  Created by lizitao on 2020/3/6.
//  Copyright © 2020 lizitao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, MDDemoItemCellType) {
    MDDemoSmallItemCellType, //展示图片或者gif
    MDDemoBigItemCellType, //展示mp4视频
};

@interface MDDemoCellItemModel : NSObject
@property (nonatomic, assign) MDDemoItemCellType cellType;
@property (nonatomic, copy) NSString *className; //控件类名
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *imageType;//mp4
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *detailVCName; //测试代码的VC
@property (nonatomic, copy) NSString *descrip; //说明

@end


NS_ASSUME_NONNULL_END
