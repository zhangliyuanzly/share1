//
//  SetViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SetViewController.h"
#import "SetTableViewCell.h"
#import "BasicViewController.h"
#import "SecretViewController.h"
#import "SetMessageViewController.h"

@interface SetViewController ()

@end

@implementation SetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 350) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[SetTableViewCell class] forCellReuseIdentifier:@"111"];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SetTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    NSArray *nameArr =  @[@"基本资料", @"修改密码", @"消息设置", @"关于SHARE", @"清除缓存"];
    
    cell.nameLabel.text = nameArr[indexPath.row];
    cell.iimageView.image = [UIImage imageNamed:@"img35.png"];
    
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 48;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
   
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
    
    if(indexPath.row == 0) {
        item.title = @"基本资料";
        BasicViewController *root = [[BasicViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
    } else if (indexPath.row == 1) {
        item.title = @"修改密码";
        SecretViewController *root = [[SecretViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
        
    } else if (indexPath.row == 2){
        item.title = @"消息设置";
        SetMessageViewController *root = [[SetMessageViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
        
    } else if (indexPath.row == 4){

        UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"" message:@"已清除缓存" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert1 addAction:sureAction1];
        [self presentViewController:alert1 animated:NO completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"尽情期待！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    }
}

-(void)disAlert : (UIAlertController *) alert {
    [alert dismissViewControllerAnimated:YES completion:nil];
    
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
