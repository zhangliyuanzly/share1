//
//  FifthViewController.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "FifthViewController.h"
#import "ZLYFifthTableViewCell.h"
#import "ZLY1FifthTableViewCell.h"
#import "RecommendViewController.h"
#import "MessageViewController.h"
#import "UpViewController.h"
#import "SetViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] init];
    tarBarItem.image = [[UIImage imageNamed:@"button5_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"button5_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self.navigationItem.title = @"个人信息";
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 550) style:UITableViewStylePlain];
    [self.view addSubview: _tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[ZLYFifthTableViewCell class] forCellReuseIdentifier:@"555"];
    [_tableView registerClass:[ZLY1FifthTableViewCell class] forCellReuseIdentifier:@"4564"];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if(indexPath.section == 0) {
        
        ZLY1FifthTableViewCell *cell = [[ZLY1FifthTableViewCell alloc] init];
        
        cell.showImageView.image = [UIImage imageNamed:@"sixin_img1.png"];
        
        cell.nameLabel.text = @"share小白";
        cell.nameLabel.font = [UIFont systemFontOfSize:20];
        
        cell.writerLabel.text = @"计科/设计爱好者";
        cell.writerLabel.font = [UIFont systemFontOfSize:12];
        
        cell.contentLabel2.text = @"日出之美便在与它脱胎于最深的黑暗";
        cell.contentLabel2.font = [UIFont systemFontOfSize:13];
        
        cell.zanImageView.image = [UIImage imageNamed:@"img1.png"];
        
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        cell.zanLabel.text = @"15";
        cell.zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.yanLabel.text = @"103";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.yanImageView.image = [UIImage imageNamed:@"button_zan.png"];
        
        cell.lineImageView.image = [UIImage imageNamed:@"button_guanzhu.png"];
        
        cell.lineLabel.text = @"70";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    } else {
        ZLYFifthTableViewCell *cell = [[ZLYFifthTableViewCell alloc] init];
        
        NSArray *nameArr = @[@"我上传的", @"我的信息", @"我推荐的", @"院系通知", @"设置", @"退出"];
        cell.label.text = nameArr[indexPath.row] ;
        cell.label.font = [UIFont systemFontOfSize:15] ;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"img%ld.png", indexPath.row + 2]] ;
        if(indexPath.row == 2) {
            image = [UIImage imageNamed:@"button_zan.png"];
        }
        cell.iimageView.image = image ;
        UIImage *buttonImage = [UIImage imageNamed:@"img33.png"];
        [cell.button setImage:buttonImage forState:UIControlStateNormal];
        
        
        return cell;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 1;
    } else {
        return 6;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        return 130;
    } else {
        return 50;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 1) {
        return @" ";
    } else {
        return @"";
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    UIImage *highlighted_backImage = [[UIImage imageNamed:@"back_img.png"] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
    
    //设置返回图标
    self.navigationController.navigationBar.backIndicatorImage = highlighted_backImage;
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = highlighted_backImage;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    if (indexPath.row == 0 && indexPath.section == 1) {
        item.title = @"我上传的";
        UpViewController *viewController = [[UpViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 1) {
        item.title = @"我的信息";
        MessageViewController *viewController = [[MessageViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 2) {
        item.title = @"我推荐的";
        RecommendViewController *viewController = [[RecommendViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 4) {
        item.title = @"设置";
        SetViewController *setViewController = [[SetViewController alloc] init];
        [self.navigationController pushViewController:setViewController animated:NO];
    } else if (indexPath.row == 3) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"您目前没有通知！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
        
    } else if (indexPath.row == 5) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"不好意思，不允许！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else {
        ;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
