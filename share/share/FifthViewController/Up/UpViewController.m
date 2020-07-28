//
//  UpViewController.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "UpViewController.h"
#import "UpTableViewCell.h"

@interface UpViewController ()

@end

@implementation UpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *array = @[@"上传时间", @"推荐最多", @"分享最多"];
    
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:array];
    [self.view addSubview:_segmentedControl];
    
    _segmentedControl.frame = CGRectMake(0, 60, [UIScreen mainScreen].bounds.size.width, 45);
    _segmentedControl.tintColor = [UIColor whiteColor];
    _segmentedControl.selectedSegmentIndex = 0;
    _segmentedControl.momentary = NO;
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateNormal];
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.45 green:0.45 blue:0.45 alpha:1.0],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateSelected];
    [_segmentedControl setBackgroundImage:[UIImage imageNamed:@"essay_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [_segmentedControl addTarget:self action:@selector(roll:) forControlEvents:UIControlEventValueChanged];
    _scrollView.bounces = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 600)];
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * 3, 600);
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.scrollEnabled = YES;
    _scrollView.bouncesZoom = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    
    _tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 510) style:UITableViewStylePlain];
    _tableView1.dataSource = self;
    _tableView1.delegate = self;
    _tableView1.tag = 111;
    [self.scrollView addSubview:_tableView1];
    
    _tableView2 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, 510) style:UITableViewStylePlain];
    _tableView2.dataSource = self;
    _tableView2.delegate = self;
    _tableView2.tag = 112;
    [self.scrollView addSubview:_tableView2];
    
    _tableView3 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width * 2, 0, [UIScreen mainScreen].bounds.size.width , 510) style:UITableViewStylePlain];
    _tableView3.dataSource = self;
    _tableView3.delegate = self;
    [self.scrollView addSubview:_tableView3];
    
    [_tableView1 registerClass:[UpTableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableView2 registerClass:[UpTableViewCell class] forCellReuseIdentifier:@"222"];
    [_tableView3 registerClass:[UpTableViewCell class] forCellReuseIdentifier:@"333"];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(tableView.tag == 111){
        UpTableViewCell *cell = [_tableView1 dequeueReusableCellWithIdentifier:@"111"];
        
        NSArray *nameArr = @[@"理想", @"晚安", @"看星星吗", @"诗", @"好天气"];
        NSArray *writerArr = @[@"share小孔", @"shareDT", @"share97", @"share小海", @"share因子"];
        NSArray *timeArr = @[@"8分钟前", @"21分钟前", @"3小时前" ,@"8小时前", @"21小时前"];
        NSArray *contentArr = @[@"藏在夏天里的喜欢", @"不如我们从头来过", @"请全力以赴的开心", @"留下来 或者我跟你走", @"良辰美景与谁可说"];
        NSArray *imageArr = @[@"image-1.jpg", @"image-3.jpg", @"image-5.jpg", @"image-2.jpg", @"image-7.jpg"];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.writerLabel.text = writerArr[indexPath.row];
        cell.timeLabel.text = timeArr[indexPath.row];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell.contentLabel.text = contentArr[indexPath.row];
        
        return cell;
        
    } else if(tableView.tag == 112) {
        
        UpTableViewCell *cell = [_tableView2 dequeueReusableCellWithIdentifier:@"222"];
        
        NSArray *nameArr = @[@"诗", @"晚安", @"理想", @"看星星吗", @"好天气"];
        NSArray *writerArr = @[@"share小孔", @"share97", @"shareDT", @"share小海", @"share因子"];
        NSArray *timeArr = @[@"8分钟前", @"21分钟前", @"3小时前" ,@"8小时前", @"21小时前"];
        NSArray *contentArr = @[@"不如我们从头来过", @"藏在夏天里的喜欢", @"留下来 或者我跟你走", @"良辰美景与谁可说", @"请全力以赴的开心"];
        NSArray *imageArr = @[@"image-23.jpg", @"image-11.jpg", @"image-10.jpg", @"image-12.jpg", @"image-9.jpg"];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.writerLabel.text = writerArr[indexPath.row];
        cell.timeLabel.text = timeArr[indexPath.row];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell.contentLabel.text = contentArr[indexPath.row];
        
        return cell;
        
    } else  {
        
        UpTableViewCell *cell = [_tableView3 dequeueReusableCellWithIdentifier:@"333"];
        
        NSArray *nameArr = @[@"理想", @"晚安", @"看星星吗", @"诗", @"好天气"];
        NSArray *writerArr = @[@"share小孔", @"shareDT", @"share97", @"share小海", @"share因子"];
        NSArray *timeArr = @[@"8分钟前", @"21分钟前", @"3小时前" ,@"8小时前", @"21小时前"];
        NSArray *contentArr = @[@"藏在夏天里的喜欢", @"不如我们从头来过", @"请全力以赴的开心", @"留下来 或者我跟你走", @"良辰美景与谁可说"];
        NSArray *imageArr = @[@"image-15.jpg", @"image-13.jpg", @"image-25.jpg", @"image-22.jpg", @"image-17.jpg"];
        
        cell.nameLabel.text = nameArr[indexPath.row];
        cell.writerLabel.text = writerArr[indexPath.row];
        cell.timeLabel.text = timeArr[indexPath.row];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell.contentLabel.text = contentArr[indexPath.row];
        
        return cell;
        
    }
    
}

- (void)roll:(UISegmentedControl *) sem{
    
    NSInteger selectindext = _segmentedControl.selectedSegmentIndex;
    if(selectindext == 0){
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    if (selectindext == 1){
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width, 0) animated:YES];
    }
    if(selectindext == 2) {
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width * 2, 0) animated:YES];
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (_scrollView.contentOffset.x == 0) {
        _segmentedControl.selectedSegmentIndex = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _segmentedControl.selectedSegmentIndex = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _segmentedControl.selectedSegmentIndex = 2;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
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
