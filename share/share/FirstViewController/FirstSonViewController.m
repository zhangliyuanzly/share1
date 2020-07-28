//
//  FirstSonViewController.m
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "FirstSonViewController.h"
#import "atFirstSonTableViewCell.h"

@interface FirstSonViewController ()

@property UITableView *tableView;


@end

@implementation FirstSonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 682) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[atFirstSonTableViewCell class] forCellReuseIdentifier:@"456"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    atFirstSonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"456"];
    
    if(!cell) {
        cell = [[atFirstSonTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"456"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
    cell.selectedBackgroundView = [[UIView alloc] init];
    cell.multipleSelectionBackgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    cell.multipleSelectionBackgroundView.backgroundColor = [UIColor clearColor];
    
    if(indexPath.section == 0) {
        
        cell.nameLabel.font = [UIFont systemFontOfSize:21];
        cell.nameLabel.text = @"假日";
    
        cell.writerLabel.font = [UIFont systemFontOfSize:17];
        cell.writerLabel.text = @"share小白";
    
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        cell.timeLabel.text = @"20分钟前";
    
        UIImage *touImage = [UIImage imageNamed:@"sixin_img1.png"];
        cell.touImageView.image = touImage;
        cell.touImageView.frame = CGRectMake(10, 10, 60, 60);
    
        UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
        cell.zanImageView.image = image2;
    
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
    
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
    
        cell.zanLabel.text = @"300";
        cell.zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"43";
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        
        cell.lineLabel.text = @"20";
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
    } else {
        cell.label.text = @"多希望列车能把我带到有你的城市。";
        cell.label.font = [UIFont systemFontOfSize:13];
        
        UIImage *image1 = [UIImage imageNamed:@"works_img1.png"];
        cell.iimageView1.image = image1;
        cell.iimageView1.frame = CGRectMake(8, 35, 350, 200);
        
        UIImage *image2 = [UIImage imageNamed:@"works_img2.png"];
        cell.iimageView2.image = image2;
        cell.iimageView2.frame = CGRectMake(8, 243, 350, 200);
        
        UIImage *image3 = [UIImage imageNamed:@"works_img3.png"];
        cell.iimageView3.image = image3;
        cell.iimageView3.frame = CGRectMake(98, 451, 200, 300);
        
        UIImage *image4 = [UIImage imageNamed:@"works_img4.png"];
        cell.iimageView4.image = image4;
        cell.iimageView4.frame = CGRectMake(8, 759, 350, 200);
        
        UIImage *image5 = [UIImage imageNamed:@"works_img5.png"];
        cell.iimageView5.image = image5;
        cell.iimageView5.frame = CGRectMake(98, 967, 200, 300);
        
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0){
        return 80;
    } else {
        return 1270;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
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
