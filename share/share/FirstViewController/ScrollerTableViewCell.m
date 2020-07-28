//
//  ScrollerTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/23.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "ScrollerTableViewCell.h"

@implementation ScrollerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _scrollView = [[UIScrollView alloc] init];
    [self.contentView addSubview:_scrollView];
    
    _pageControl = [[UIPageControl alloc] init];
    [self.contentView addSubview:_pageControl];
    
    _timer = [[NSTimer alloc] init];
    
    for (int i = 0; i < 4; i++) {

        UIImageView *imageView = [[UIImageView alloc]init];

        imageView.frame = CGRectMake(375 * i, 0, 375, 170);

        if(i == 0) {
            imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"main_img%d.jpg", i + 1]];
        } else {
            imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"main_img%d.png", i + 1]];
        }
        [_scrollView addSubview:imageView];
    }
     [self addTimerTask];
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
     _scrollView.frame = CGRectMake(0, 0, 375, 175);
    _pageControl.frame = CGRectMake(180, 150, 100, 10) ;
    
    _scrollView.contentSize = CGSizeMake(4 * 375, 170);
    _scrollView.bounces = NO;
    _scrollView.scrollEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    
    _scrollView.pagingEnabled = YES;
    
    _pageControl.numberOfPages = 4;
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.pageIndicatorTintColor = [UIColor blackColor];
    _pageControl.currentPage = 0;
    
    _scrollView.delegate = self;
}

- (void)addTimerTask{
    _timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    // 默认是NSDefaultRunLoopMode  但是另外一个属性NSRunLoopCommonModes 能够在多线程中起作用
    [runloop addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    //立即执行定时器的方法  fire 是定时器自带的方法
    [self.timer fire];
}

- (void)nextImage {

    NSInteger page = self.pageControl.currentPage;

    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
        self.scrollView.contentOffset = CGPointMake(0, 0);
        [self.scrollView setContentOffset:self.scrollView.contentOffset animated:YES];
    }else{
        page ++;
    }
    CGFloat offsetX = page * [UIScreen mainScreen].bounds.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (_scrollView.contentOffset.x == 0) {
        _pageControl.currentPage = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _pageControl.currentPage = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _pageControl.currentPage = 2;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 3)  {
        _pageControl.currentPage = 3;
    }
    
}

@end
