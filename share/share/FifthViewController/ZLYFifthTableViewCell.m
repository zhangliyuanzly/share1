//
//  ZLYFifthTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "ZLYFifthTableViewCell.h"

@implementation ZLYFifthTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    self.button = [[UIButton alloc] init];
    [self.contentView addSubview:_button];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _iimageView.frame = CGRectMake(10, 15, 20, 20);
    
    _label.frame = CGRectMake(40, 15, 300, 20);
    
    _button.frame = CGRectMake(370, 15, 20, 20);
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
