//
//  SecretViewController.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecretViewController.h"
#import "SecretTableViewCell.h"

@interface SecretViewController (){
    NSString *nameStr;
    NSString *passStr;
    NSString *apassStr;
    NSInteger tag;
    NSMutableArray *passArr;
}

@end

@implementation SecretViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    passArr = [[NSMutableArray alloc] init];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 230) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[SecretTableViewCell class] forCellReuseIdentifier:@"111"];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    button.frame = CGRectMake(160, 280, 85, 30);
    [button setTitle:@"确认修改" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    button.titleLabel.font = [UIFont systemFontOfSize:17];
    button.tintColor = [UIColor whiteColor];
    button.backgroundColor = [UIColor blackColor];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SecretTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    NSArray *nameArr = @[@"旧密码", @"新密码", @"确认密码"];
    NSArray *placeArr = @[@"6-20英文或数字组合", @"6-20英文或数字组合", @"请再次确认输入密码"];
    
    [cell.TextField addTarget:self action:@selector(textFieldWithText:) forControlEvents:UIControlEventEditingChanged];
    
    cell.label.text  = nameArr[indexPath.row];
    cell.TextField.placeholder = placeArr[indexPath.row];
    cell.TextField.secureTextEntry = YES;
    
    
    
    return cell;
    
}

- (void)press{
    
    NSLog(@"%@", passArr[0]);
    NSLog(@"%@", passArr[1]);
    NSLog(@"%@", passArr[2]);
    
    if([passStr isEqualToString:apassStr]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"您已成功修改密码！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"两次密码不一致！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    }
    
}

- (void)textFieldWithText:(UITextField *)textField {
    [passArr addObject:textField.text];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

//点击屏幕空白处调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
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
