//
//  BaseCell.h
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingItem;
@interface BaseCell : UITableViewCell

////根据settingItem模型来显示内容
//@property (nonatomic, strong) SettingItem *item;
////给外部提供一个创建cell的方法
//+ (instancetype)cellWithTableView:(UITableView *)tableView;
////设置每一组的背景图片的方法
//- (void)setIndexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount;

@property (nonatomic, strong) SettingItem *item;

+ (id)settingCellWithTableView:(UITableView *)tableView;

@end
