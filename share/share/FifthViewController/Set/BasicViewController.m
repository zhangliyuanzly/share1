//
//  BasicViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "BasicViewController.h"
#import "Basic1TableViewCell.h"
#import "Basic2TableViewCell.h"
#import "Basic3TableViewCell.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 400) style:UITableViewStylePlain];
    [self.view addSubview:_tableview];
    
    _tableview.dataSource = self;
    _tableview.delegate = self;
    
    [_tableview registerClass:[Basic1TableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableview registerClass:[Basic2TableViewCell class] forCellReuseIdentifier:@"222"];
    [_tableview registerClass:[Basic3TableViewCell class] forCellReuseIdentifier:@"333"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *nameArr = @[@"头像", @"昵称", @"签名", @"性别", @"邮箱"];
    NSArray *contentArr = @[@" ", @"share小白", @"日出之美便在于它脱胎于最深的黑暗", @" ", @"1378922283@qq.com"];
    
    if(indexPath.row == 0) {
        
        Basic1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.iimageView.image = [UIImage imageNamed:@"sixin_img1.png"];
        
        return cell;
        
    } else if(indexPath.row == 3) {
        
        Basic3TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"333" forIndexPath:indexPath];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.manLabel.text = @"男";
        cell.womanLabel.text = @"女";
        
        return cell;
        
    } else {
        
        Basic2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.writerLabel.text = contentArr[indexPath.row];
        
        return cell;
        
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        return 85;
    } else {
        return 55;
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
