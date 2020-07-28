//
//  Message1TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Message1TableViewCell.h"

@implementation Message1TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    self.numLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_numLabel];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(37, 10, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:15];
    
    _numLabel.frame = CGRectMake(300, 10, 15, 20);
    _numLabel.textColor =  [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _numLabel.font = [UIFont systemFontOfSize:15];
    
    _iimageView.frame = CGRectMake(270, 10, 15, 15);
    
    
}

@end
