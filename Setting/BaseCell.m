//
//  BaseCell.m
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "BaseCell.h"
#import "SettingItem.h"
#import "UIView+Extension.h"
@interface BaseCell() <UITextFieldDelegate>{
    UIImageView *_arrow;
    UISwitch *_switch;
    UITextField *_textField;
    UIImageView *_imageView;
}
@end

@implementation BaseCell

+ (id)settingCellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"Cell";
    
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[BaseCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    [cell setSeparatorInset:UIEdgeInsetsMake(0, 20, 0, 0)];
    
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setItem:(SettingItem *)item
{
    _item = item;
    
    // 设置数据
    self.imageView.image = [UIImage imageNamed:item.image];
    self.textLabel.text = item.title;
    self.textLabel.font = [UIFont systemFontOfSize:17];
    self.detailTextLabel.text = item.subTitle;
    self.detailTextLabel.textColor = item.detailLabelColor;
    
    // 箭头
    if (item.type == SettingItemTypeArrow) {
        
        if (_arrow == nil) {
            _arrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
        }
        if (_imageView == nil) {
            _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:item.rightImage]];
            _imageView.frame = CGRectMake(self.width, 0, 25, 25);
            _imageView.centerY = self.centerY;
            [self addSubview:_imageView];
        }
      
        // 右边显示箭头
        self.accessoryView = _arrow;
        // 用默认的选中样式
        self.selectionStyle = UITableViewCellSelectionStyleBlue;
        
    // switch
    } else if (item.type == SettingItemTypeSwitch) {
        
        if (_switch == nil) {
            _switch = [[UISwitch alloc] init];
        }
        
        // 右边显示开关
        self.accessoryView = _switch;
        // 禁止选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    } else if(item.type == SettingItemTypeTextField) {
        
        if (_textField == nil) {
            _textField = [[UITextField alloc] init];
            _textField.height = self.height;
            _textField.placeholder = item.placeHolder;
            _textField.font = [UIFont systemFontOfSize:13];
            _textField.width = 200;
            _textField.x = [UIScreen mainScreen].bounds.size.width - 210;
            _textField.delegate = self;
            _textField.textAlignment = NSTextAlignmentRight;
        }
        // 右边显示开关
        self.accessoryView = _textField;
        // 禁止选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    } else {
        // 什么也没有，清空右边显示的view
        self.accessoryView = nil;
        // 用默认的选中样式
        self.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
}

@end
