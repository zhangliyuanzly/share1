//
//  FourthViewController.m
//  share
//
//  Created by cinderella on 2020/7/23.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "FourthViewController.h"
#import "ZLYFourthTableViewCell.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] init];
    tarBarItem.image = [[UIImage imageNamed:@"button4_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"button4_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self.navigationItem.title = @"活动";
    
    //画布范围大小
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 370, 700) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[ZLYFourthTableViewCell class] forCellReuseIdentifier:@"444"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ZLYFourthTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"444" forIndexPath:indexPath];
    
    if(!cell) {
        ZLYFourthTableViewCell *cell = [[ZLYFourthTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"444"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
    if(indexPath.section == 0) {
        cell.iimageView.image = [UIImage imageNamed:@"tt1.jpg"];
        
    } else if(indexPath.section == 1){
        cell.iimageView.image = [UIImage imageNamed:@"tt2.jpg"];

    } else {
        cell.iimageView.image = [UIImage imageNamed:@"tt3.jpg"];
        
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 170;
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

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
