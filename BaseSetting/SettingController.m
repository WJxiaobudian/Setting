//
//  SettingController.m
//  BaseSetting
//
//  Created by 王洁 on 2018/5/12.
//  Copyright © 2018年 王洁. All rights reserved.
//

#import "SettingController.h"
#import "testTableViewController.h"
@interface SettingController ()

@end

@implementation SettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addOneSectionItems];
    [self addTwoSectionItems];
    [self addThreeSectionItems];
    [self addFourSectionItems];
    [self addFiveSectionItems];
    [self addSixSectionItems];
    
}

- (void)addOneSectionItems {
    SettingItem *item = [SettingItem itemWithImage:@"ff_IconShowAlbum_25x25_" title:@"朋友圈" type:SettingItemTypeArrow rightImage:@"MoreMyFavorites_25x25_"];
    item.operation = ^ {
        testTableViewController *test = [[testTableViewController alloc] init];
        [self.navigationController pushViewController:test animated:YES];
    };
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[item];
    [self.groups addObject:group];
}

- (void)addTwoSectionItems {
    SettingItem *scan = [SettingItem itemWithImage:@"ff_IconQRCode_25x25_" title:@"扫一扫" type:SettingItemTypeArrow desc:nil];
    SettingItem *wave = [SettingItem itemWithImage:@"ff_IconShake_25x25_" title:@"摇一摇" type:SettingItemTypeArrow desc:nil];

    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[scan, wave];
    [self.groups addObject:group];
}

- (void)addThreeSectionItems {
    SettingItem *look = [SettingItem itemWithImage:@"ff_IconBrowse1_25x25_" title:@"看一看" type:SettingItemTypeArrow desc:nil];
    SettingItem *search = [SettingItem itemWithImage:@"ff_IconSearch1_25x25_" title:@"搜一搜" type:SettingItemTypeArrow desc:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[look, search];
    [self.groups addObject:group];
}

- (void)addFourSectionItems {
    SettingItem *near = [SettingItem itemWithImage:@"ff_IconLocationService_25x25_" title:@"附近的人" type:SettingItemTypeArrow desc:nil];
    SettingItem *bottle = [SettingItem itemWithImage:@"ff_IconBottle_25x25_" title:@"漂流瓶" type:SettingItemTypeArrow desc:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[near, bottle];
    [self.groups addObject:group];
}

- (void)addFiveSectionItems {
    SettingItem *shop = [SettingItem itemWithImage:@"MoreSetting_25x25_" title:@"购物" type:SettingItemTypeArrow desc:nil];
    SettingItem *game = [SettingItem itemWithImage:@"MoreGame_25x25_" title:@"游戏" type:SettingItemTypeArrow desc:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[shop, game];
    [self.groups addObject:group];
}

- (void)addSixSectionItems {
    SettingItem *program = [SettingItem itemWithImage:@"WAMsg_WeAppLogo_14x14_" title:@"小程序" type:SettingItemTypeArrow desc:nil];
    
    GroupItem *group = [[GroupItem alloc] init];
    group.items = @[program];
    [self.groups addObject:group];
}


@end
