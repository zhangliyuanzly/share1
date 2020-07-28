//
//  SiMessageTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SiMessageTableViewCell.h"

@implementation SiMessageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.contentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel];
    
    self.timeLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_timeLabel];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _iimageView.frame = CGRectMake(10, 10, 50, 50);
    
    _nameLabel.frame = CGRectMake(85, 14, 100, 28);
    _nameLabel.font = [UIFont systemFontOfSize:18];
    
    _contentLabel.frame = CGRectMake(85, 40, 220, 25);
    _contentLabel.font = [UIFont systemFontOfSize:15];
    _contentLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _timeLabel.textColor = [UIColor grayColor];
    _timeLabel.font = [UIFont systemFontOfSize:10];
    _timeLabel.frame = CGRectMake(314, 10, 70, 10);
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
