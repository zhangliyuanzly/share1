//
//  First3TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "First3TableViewCell.h"

@implementation First3TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.contentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.zanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_zanLabel];
    
    self.yanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_yanLabel];
    
    self.lineLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_lineLabel];
    
    self.showImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView];
    
    self.zanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_zanImageView];
    
    self.yanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_yanImageView];
    
    self.lineImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_lineImageView];
    
    self.button = [[UIButton alloc] init];
    [self.contentView addSubview:_button];
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _writerLabel.frame = CGRectMake(308, 52, 100, 20);
    _writerLabel.font = [UIFont systemFontOfSize:13];
    
    _contentLabel.frame = CGRectMake(200, 70, 200, 15);
    _contentLabel.font = [UIFont systemFontOfSize:13];
    
    _timeLabel.frame = CGRectMake(200, 88, 200, 15);
    _timeLabel.font = [UIFont systemFontOfSize:13];
    
    _nameLabel.frame = CGRectMake(200, 0, 180, 60);
    _nameLabel.font = [UIFont systemFontOfSize:19];
    
    _zanSelect = NO;
    
    _button.frame = CGRectMake(200, 110, 20, 15);
    _button.tintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
    [_button setImage:image2 forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(pressZan) forControlEvents:UIControlEventTouchDown];
    
    _zanLabel.frame = CGRectMake(223, 110, 30, 20);
    _zanLabel.text = @"75";
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _yanLabel.frame = CGRectMake(283, 110, 30, 20);
    _yanLabel.font = [UIFont systemFontOfSize:12];
    _yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    
    _lineLabel.frame = CGRectMake(343, 110, 30, 20);
    _lineLabel.font = [UIFont systemFontOfSize:12];
    _lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _showImageView.frame = CGRectMake(0, 0, 170, 140);
    
    _zanImageView.frame = CGRectMake(200, 110, 20, 15);
    
    _yanImageView.frame = CGRectMake(260, 110, 20, 15);
    
    _lineImageView.frame = CGRectMake(320, 110, 20, 15);
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)pressZan {
    
    if(_zanSelect == NO) {
        _zanSelect = YES;
        _zanLabel.text = @"76";
    } else {
        _zanSelect = NO;
        _zanLabel.text = @"75";
    }
    
}

@end
