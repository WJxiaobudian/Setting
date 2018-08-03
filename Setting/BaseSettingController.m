//
//  BaseSettingController.m
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "BaseSettingController.h"
#import "BaseCell.h"


@interface BaseSettingController ()

@end

@implementation BaseSettingController

//让这个类一初始化就是组样式的
- (instancetype)init {
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
    }
    
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;

}

//一定要对组进行懒加载，不然的话，子类是没有办法初始化他的
- (NSMutableArray *)groups {
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

#pragma mark - Table view data source
//返回组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}
//返回行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    GroupItem *group = self.groups[section];
    return group.items.count;
}

//初始化cell并给cell赋值
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1.创建一个iCocosSettingCell
    BaseCell *cell = [BaseCell settingCellWithTableView:tableView];
    
    // 2.取出这行对应的模型（iCocosSettingItem）
    GroupItem *group = self.groups[indexPath.section];
    cell.item = group.items[indexPath.row];
    return cell;
}
//返回脚部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    GroupItem *group = self.groups[section];
    return group.footTitle;
}
//返回头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    GroupItem *group = self.groups[section];
    return group.headTitle;
}
//当cell选中的时候执行该方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // 0.取出这行对应的模型
    GroupItem *group = self.groups[indexPath.section];
    SettingItem *item = group.items[indexPath.row];
    
    // 1.取出这行对应模型中的block代码
    if (item.operation) {
        // 执行block
        item.operation();
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

@end
