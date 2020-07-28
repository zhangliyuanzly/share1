//
//  SecondSon1TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecondSon1TableViewCell.h"

@implementation SecondSon1TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.zanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_zanLabel];
    
    self.yanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_yanLabel];
    
    self.lineLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_lineLabel];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    self.showImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView];
    
    self.zanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_zanImageView];
    
    self.yanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_yanImageView];
    
    self.lineImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_lineImageView];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(220, 0, 180, 60);
    
    _timeLabel.frame = CGRectMake(220, 75, 200, 15);
    
    _label.frame = CGRectMake(220, 60, 200, 15);
    
    _writerLabel.frame = CGRectMake(220, 40, 100, 20);
    
    _zanLabel.frame = CGRectMake(230, 110, 30, 20);
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _yanLabel.frame = CGRectMake(290, 110, 30, 20);
    _yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _lineLabel.frame = CGRectMake(350, 110, 30, 20);
    _lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _showImageView.frame = CGRectMake(0, 0, 200, 140);
    
    _zanImageView.frame = CGRectMake(205, 110, 20, 15);
    
    _yanImageView.frame = CGRectMake(265, 110, 20, 15);
    
    _lineImageView.frame = CGRectMake(325, 110, 20, 15);
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
