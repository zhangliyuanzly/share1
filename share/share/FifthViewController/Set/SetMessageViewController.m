//
//  SetMessageViewController.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SetMessageViewController.h"
#import "SetMessageTableViewCell.h"

@interface SetMessageViewController ()

@end

@implementation SetMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height / 2) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[SetMessageTableViewCell class] forCellReuseIdentifier:@"111"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SetMessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    NSArray *nameArr = @[@"接受所有新消息通知", @"通知显示栏", @"声音", @"振动", @"关注更新"];
    cell.label.text = nameArr[indexPath.row];
    [cell.button setImage:[UIImage imageNamed:@"my_button_normal.png"] forState:UIControlStateNormal];
    [cell.button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
    
    return cell;
    
}

- (void)press:(UIButton *) btn{
    
    [btn setImage:[UIImage imageNamed:@"my_button_pressed.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchDown];
    
}

- (void)pressed:(UIButton *) btn {
    
    [btn setImage:[UIImage imageNamed:@"my_button_normal.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
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
