//
//  Basic1TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Basic1TableViewCell.h"

@implementation Basic1TableViewCell

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
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    return self;
    
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(35, 30, 40, 20);
    _nameLabel.font = [UIFont systemFontOfSize:17];
    
    _iimageView.frame = CGRectMake(115, 13, 60, 60);
    
}

@end
