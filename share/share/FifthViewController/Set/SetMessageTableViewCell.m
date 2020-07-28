//
//  SetMessageTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SetMessageTableViewCell.h"

@implementation SetMessageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    self.button = [[UIButton alloc] init];
    [self.contentView addSubview:_button];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _label.frame = CGRectMake(42, 17, 270, 20);
    _label.font = [UIFont systemFontOfSize:17];
    
    _button.frame = CGRectMake(320, 17, 20, 20);
    
    
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
