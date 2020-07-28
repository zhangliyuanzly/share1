//
//  ZLYFifth1TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "ZLY1FifthTableViewCell.h"

@implementation ZLY1FifthTableViewCell

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
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.contentLabel1 = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel1];
    
    self.contentLabel2 = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel2];
    
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
    
    self.button2 = [[UIButton alloc] init];
    [self.contentView addSubview:_button2];
    
    return self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(150, 0, 180, 60);
    
    _zanLabel.frame = CGRectMake(176, 110, 30, 20);
    
    _yanLabel.frame = CGRectMake(233, 110, 30, 20);
    
    _lineLabel.frame = CGRectMake(293, 110, 30, 20);
    
    _showImageView.frame = CGRectMake(30, 15, 100, 100);
    
    _zanImageView.frame = CGRectMake(150, 110, 20, 15);
    
    _yanImageView.frame = CGRectMake(210, 110, 20, 15);
    
    _lineImageView.frame = CGRectMake(270, 110, 20, 15);
    
    _writerLabel.frame = CGRectMake(150, 43, 100, 20);
    
    _contentLabel1.frame = CGRectMake(150, 63, 300, 15);
    
    _contentLabel2.frame = CGRectMake(150, 78, 300, 15);
    
}

@end
