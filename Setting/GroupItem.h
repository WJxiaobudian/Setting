//
//  GroupItem.h
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupItem : NSObject

//每一组的行数
@property (nonatomic, strong) NSArray *items;
//头标题
@property (nonatomic, copy) NSString *headTitle;
//脚标题
@property (nonatomic, copy) NSString *footTitle;

@end
