//
//  SecretTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecretTableViewCell.h"

@implementation SecretTableViewCell

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
    
    self.TextField = [[UITextField alloc] init];
    [self.contentView addSubview:_TextField];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    return self;
    
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _TextField.frame = CGRectMake(150, 15, 300, 20);
    
    _label.frame = CGRectMake(35, 15, 100, 20);
    _label.font = [UIFont systemFontOfSize:17];
    
}


@end
