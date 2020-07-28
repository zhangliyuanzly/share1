//
//  atFirstSonTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "atFirstSonTableViewCell.h"

@implementation atFirstSonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    self.touImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_touImageView];
    
    self.zanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_zanImageView];
    
    self.yanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_yanImageView];
    
    self.lineImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_lineImageView];
    
    self.zanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_zanLabel];
    
    self.yanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_yanLabel];
    
    self.lineLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_lineLabel];
    
    self.iimageView1 = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView1];
    
    self.iimageView2 = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView2];
    
    self.iimageView3 = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView3];
    
    self.iimageView4 = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView4];
    
    self.iimageView5 = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView5];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _nameLabel.frame = CGRectMake(100, 15, 100, 22);
    
    _writerLabel.frame = CGRectMake(100, 45, 100, 20);
    
    _timeLabel.frame = CGRectMake(300, 15, 50, 15);
    
    _zanImageView.frame = CGRectMake(235, 50, 15, 15);
    
    _zanLabel.frame = CGRectMake(255, 50, 30, 15);
    
    _yanImageView.frame = CGRectMake(285, 50, 20, 15);
    
    _yanLabel.frame = CGRectMake(310, 50, 30, 15);
    
    _lineImageView.frame = CGRectMake(330, 50, 15, 15);
    
    _lineLabel.frame = CGRectMake(350, 50, 30, 15);
    
    _label.frame = CGRectMake(8, 10, 400, 17);
    
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
