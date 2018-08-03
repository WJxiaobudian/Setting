//
//  SettingItem.m
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem

+ (instancetype)itemWithTitle:(NSString *)title {
    SettingItem *item = [[self alloc] init];
    item.title = title;
    return item;
}

+ (instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type rightImage:(NSString *)rightImage {
    SettingItem *item = [[self alloc] init];
    item.image = icon;
    item.title = title;
    item.type = type;
    item.rightImage = rightImage;
    return item;
}

+ (instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type desc:(NSString *)desc {
    SettingItem *item = [[self alloc] init];
    item.image = icon;
    item.title = title;
    item.type = type;
    item.desc = desc;
    return item;
}

+ (instancetype)itemWithImage:(NSString *)icon title:(NSString *)title type:(SettingItemType)type desc:(NSString *)desc detailLabelColor:(UIColor *)detailLabelColor {
    SettingItem *item = [[self alloc] init];
    item.image = icon;
    item.title = title;
    item.type = type;
    item.desc = desc;
    item.detailLabelColor = detailLabelColor;
    return item;
}

+ (instancetype)itemWithTitle:(NSString *)title type:(SettingItemType)type placeHolder:(NSString *)placeHolder {
    SettingItem *item = [[self alloc] init];
    item.title = title;
    item.type = type;
    item.placeHolder = placeHolder;
    return item;
}
@end
