//
//  SettingItem.h
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum {
    SettingItemTypeNone, // none
    SettingItemTypeArrow, // 箭头
    SettingItemTypeSwitch, // 开关
    SettingItemTypeTextField // 
} SettingItemType;

@interface SettingItem : NSObject

//左边图片
@property (nonatomic, strong) NSString *image;
//标题
@property (nonatomic, strong) NSString *title;
//子标题
@property (nonatomic, strong) NSString *subTitle;
// 描述
@property (nonatomic, strong) NSString *desc;
//占位文字
@property (nonatomic, strong) NSString *placeHolder;
// 描述文字颜色
@property (nonatomic, strong) UIColor *detailLabelColor;
// 右边图片
@property (nonatomic, strong) NSString *rightImage;

@property (nonatomic, assign) SettingItemType type;

@property (nonatomic, strong) void(^operation)(void);


+ (instancetype)itemWithTitle:(NSString *)title;

+(instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type rightImage:(NSString *)rightImage;

+ (instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type desc:(NSString *)desc;

+ (instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type desc:(NSString *)desc detailLabelColor:(UIColor *)detailLabelColor;

+ (instancetype)itemWithTitle:(NSString *)title type:(SettingItemType)type placeHolder:(NSString *)placeHolder;


@end
