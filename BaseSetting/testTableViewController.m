//
//  ViewController.m
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "testTableViewController.h"

@interface testTableViewController ()
@end

@implementation testTableViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addOneSectionItems];
    [self addTwoSectionItems];
    [self setThreeSectionItems];
}

#pragma mark 添加第0组的模型数据
- (void)addOneSectionItems
{
    // 1.1.推送和提醒
    SettingItem *push = [SettingItem itemWithImage:@"MorePush" title:@"推送和提醒" type:SettingItemTypeArrow desc:nil];
    push.operation = ^{
//        SettingViewController *notice = [[SettingViewController alloc] init];
//        [self.navigationController pushViewController:notice animated:YES];
    };
    
    // 1.2.摇一摇机选
    SettingItem *shake = [SettingItem itemWithImage:@"handShake" title:@"摇一摇机选" type:SettingItemTypeSwitch desc:nil];
    
    // 1.3.声音效果
    
    SettingItem *sound = [SettingItem itemWithImage:@"sound_Effect" title:@"声音效果" type:SettingItemTypeSwitch desc:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.headTitle = @"基本设置";
    group.items = @[push, shake, sound];
    [self.groups addObject:group];
}


#pragma mark 添加第1组的模型数据
- (void)addTwoSectionItems {
    SettingItem *push = [SettingItem itemWithImage:@"MorePush" title:@"推送和提醒" type:SettingItemTypeArrow rightImage:@"MoreHelp"];
    push.operation = ^{
//        SettingViewController *notice = [[SettingViewController alloc] init];
//        [self.navigationController pushViewController:notice animated:YES];
    };
    
    // 2.1.检查新版本
    SettingItem *update = [SettingItem itemWithImage:@"MoreUpdate" title:@"检查新版本" type:SettingItemTypeArrow desc:@"1.0.2"];
    update.operation = ^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提醒" message:@"暂时没有新版本" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil];
        [alert show];
    };
    
//
    // 2.2.帮助
    SettingItem *help = [SettingItem itemWithImage:@"MoreHelp" title:@"帮助" type:SettingItemTypeArrow desc:nil];
    help.operation = ^{
        UIViewController *helpVc = [[UIViewController alloc] init];
        helpVc.view.backgroundColor = [UIColor brownColor];
        helpVc.title = @"帮助";
        [self.navigationController pushViewController:helpVc animated:YES];
    };
    
    // 2.3.分享
    SettingItem *share = [SettingItem itemWithImage:@"MoreShare" title:@"分享" type:SettingItemTypeArrow rightImage:nil];
    
    // 2.4.查看消息
    SettingItem *msg = [SettingItem itemWithImage:@"MoreMessage" title:@"查看消息" type:SettingItemTypeArrow rightImage:nil];
    
    // 2.5.产品推荐
    SettingItem *product = [SettingItem itemWithImage:@"MoreNetease" title:@"产品推荐" type:SettingItemTypeArrow rightImage:nil];
    
    // 2.6.关于
    SettingItem *about = [SettingItem itemWithImage:@"MoreAbout" title:@"关于" type:SettingItemTypeArrow rightImage:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.headTitle = @"高级设置";
    group.footTitle = @"这的确是高级设置！！！";
    group.items = @[update, help, share, msg, product, about, push];
    [self.groups addObject:group];
}

- (void)setThreeSectionItems {
    SettingItem *documents = [SettingItem itemWithTitle:@"文字" type:SettingItemTypeTextField placeHolder:nil];
    SettingItem *arrow = [SettingItem itemWithTitle:@"占位文字" type:SettingItemTypeTextField placeHolder:@"请输入手机号"];
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[arrow, documents];
    [self.groups addObject:group];
}

@end
