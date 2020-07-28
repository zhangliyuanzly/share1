//
//  CareViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "CareViewController.h"
#import "Care1TableViewCell.h"

@interface CareViewController ()

@end

@implementation CareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 600) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[Care1TableViewCell class] forCellReuseIdentifier:@"111"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Care1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    NSArray *nameArr = @[@"share小格", @"share小兰", @"share小明", @"share小雪", @"share萌萌", @"shareLity"];
    NSArray *imageArr = @[@"sixin_img1.png", @"sixin_img2.png", @"sixin_img3.png", @"sixin_img4.png", @"t2.jpg", @"yy.jpg"];
    
    cell.label.text = nameArr[indexPath.row];
    cell.iimageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
    UIImage *image = [UIImage imageNamed:@"guanzhu_normal.png"];
    [cell.button setImage:image forState:UIControlStateNormal];
    [cell.button addTarget:self action:@selector(pressBtned:) forControlEvents:UIControlEventTouchDown];
    
    return cell;
    
}

- (void)pressBtned:(UIButton *) btn{
    UIImage *image = [UIImage imageNamed:@"guanzhu_pressed.png"];
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressBtn:(UIButton *)btn{
    UIImage *image = [UIImage imageNamed:@"guanzhu_normal.png"];
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtned:) forControlEvents:UIControlEventTouchDown];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
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
