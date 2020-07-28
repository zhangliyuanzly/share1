//
//  FirstViewController.m
//  share
//
//  Created by cinderella on 2020/7/23.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "FirstViewController.h"
#import "First1TableViewCell.h"
#import "ScrollerTableViewCell.h"
#import "FirstSonViewController.h"
#import "First2TableViewCell.h"
#import "First3TableViewCell.h"

@interface FirstViewController ()

@property First1TableViewCell *cell;
@property NSMutableArray *zanArr;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] init];
    tarBarItem.image = [[UIImage imageNamed:@"button1_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"button1_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 370, 620) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[First1TableViewCell class] forCellReuseIdentifier:@"459"];
    [_tableView registerClass:[First2TableViewCell class] forCellReuseIdentifier:@"456"];
    [_tableView registerClass:[ScrollerTableViewCell class] forCellReuseIdentifier:@"123"];
    [_tableView registerClass:[First3TableViewCell class] forCellReuseIdentifier:@"333"];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (UIView*)bgView {
    if (self.view == nil) {
        self.view = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.navigationController.navigationBar.frame.size.width, self.navigationController.navigationBar.frame.size.height + 20)];
        [self.navigationController.view insertSubview:self.view belowSubview:self.navigationController.navigationBar];
        
    }
    return self.view;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.section == 0) {
        ScrollerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
        return cell;
    } else if(indexPath.section == 1){
        
        First2TableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"456"forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"image-3.jpg"];
        cell2.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell2.yanImageView.image = image3;
    
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell2.lineImageView.image = image4;
    
        cell2.nameLabel.text = @"假日";
        cell2.nameLabel.font = [UIFont systemFontOfSize:18];
    
        cell2.writerLabel.text = @"share小白";
        cell2.writerLabel.font = [UIFont systemFontOfSize:15];
   
        cell2.contentLabel1.text = @"原创-插画-练习习作";
        cell2.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell2.contentLabel2.text = @"8分钟前";
        cell2.contentLabel2.font = [UIFont systemFontOfSize:12];
    
        cell2.yanLabel.text = @"30";
        cell2.yanLabel.font = [UIFont systemFontOfSize:12];
        cell2.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
        cell2.lineLabel.text = @"50";
        cell2.lineLabel.font = [UIFont systemFontOfSize:12];
        cell2.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell2;
        
        
    } else if (indexPath.section == 2) {
        
        First1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"459" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img2.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"国外画册欣赏";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小王";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel1.text = @"平面设计——画册设计";
        cell.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell.contentLabel2.text = @"20分钟前";
        cell.contentLabel2.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"40";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"47";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    } else if (indexPath.section == 3) {
        
         First1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"459" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img3.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"collection扁平设计";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小吕";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel1.text = @"平面设计——海报设计";
        cell.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell.contentLabel2.text = @"20分钟前";
        cell.contentLabel2.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"54";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"13";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    } else {
        
         First3TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"333" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img4.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"版式整理术：高效解决多风格要求";
        cell.nameLabel.numberOfLines = 0;
        cell.nameLabel.font = [UIFont systemFontOfSize:17];
        
        cell.writerLabel.text = @"share小王";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel.text = @"平面设计——样式设计";
        cell.contentLabel.font = [UIFont systemFontOfSize:12];
        
        cell.timeLabel.text = @"40分钟前";
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"32";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"70";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        return 175;
    } else {
        return 140;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 15;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 1 ){
        FirstSonViewController *jiari = [[FirstSonViewController alloc] init];
        [self.navigationController pushViewController:jiari animated:NO];
        
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
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
