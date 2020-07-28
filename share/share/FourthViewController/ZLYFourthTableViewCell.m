//
//  ZLYFourthTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/23.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "ZLYFourthTableViewCell.h"

@implementation ZLYFourthTableViewCell

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
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    return self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    //每个图片的大小
    _iimageView.frame = CGRectMake(0, 0, 414, 170);
    
}

@end
