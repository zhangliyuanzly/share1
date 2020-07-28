//
//  SiMessageViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SiMessageViewController.h"
#import "SiMessageTableViewCell.h"

@interface SiMessageViewController ()

@end

@implementation SiMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 420) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = (id)self;
    
    [_tableView registerClass:[SiMessageTableViewCell class] forCellReuseIdentifier:@"111"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SiMessageTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"111"];
    
    NSArray *nameArr = @[@"share小格", @"share小兰", @"share小明", @"share小雪"];
    //NSArray *contentArr = @[@"你的作品我很喜欢！", @"谢谢，已关注你", @"为你点赞！", @"你好可以问问你是怎么拍的吗？"];
    NSArray *timeArr = @[@"9-21 07:32", @"10-43 12:00", @"3-09 21:17", @"7-21 13:43"];
        
    cell.nameLabel.text = nameArr[indexPath.row];
    //cell.contentLabel.text = contentArr[indexPath.row];
    cell.timeLabel.text = timeArr[indexPath.row];
    cell.iimageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"sixin_img%ld.png", indexPath.row + 1]];
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 75;
}

- (void)viewDidAppear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = YES;
}

- (void)viewDidDisappear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = YES;
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
