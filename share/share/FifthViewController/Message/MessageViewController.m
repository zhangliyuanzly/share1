//
//  MessageViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "MessageViewController.h"
#import "Message1TableViewCell.h"
#import "SiMessageViewController.h"
#import "CareViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 400) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[Message1TableViewCell class] forCellReuseIdentifier:@"111"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Message1TableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    NSArray *nameArr =  @[@"评论", @"推荐我的", @"新关注的", @"私信", @"活动通知"];
    NSArray *numArr = @[@"7", @"4", @"5", @"8", @"3"];
    
    cell.nameLabel.text = nameArr[indexPath.row];
    cell.numLabel.text = numArr[indexPath.row];
    cell.iimageView.image = [UIImage imageNamed:@"img35.png"];
    
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
    
    if(indexPath.row == 3) {
        item.title = @"私信";
        SiMessageViewController *root = [[SiMessageViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
    } else if (indexPath.row == 2) {
        item.title = @"新关注的";
        CareViewController *root = [[CareViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"当前内容正在测试中，尽情期待" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
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
