
//
//  Basic3TableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Basic3TableViewCell.h"

@implementation Basic3TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.manLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_manLabel];
    
    self.womanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_womanLabel];
    
    self.manButton = [[UIButton alloc] init];
    [self.contentView addSubview:_manButton];
    
    self.womanButton = [[UIButton alloc] init];
    [self.contentView addSubview:_womanButton];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _man = YES;
    
    _nameLabel.frame = CGRectMake(35, 17, 40, 20);
    _nameLabel.font = [UIFont systemFontOfSize:17];
    
    _manLabel.frame = CGRectMake(135, 17, 20, 20);
    _manLabel.font = [UIFont systemFontOfSize:17];
    
    _womanLabel.frame = CGRectMake(185, 17, 20, 20);
    _womanLabel.font = [UIFont systemFontOfSize:17];
    
    _manButton.frame = CGRectMake(115, 17, 20, 20);
    [_manButton addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    [_manButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
    
    _womanButton.frame = CGRectMake(165, 17, 20, 20);
    [_womanButton addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    [_womanButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
    
}

- (void)press{
    
    if(_man) {
        _man = NO;
        [_manButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
        [_womanButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
    } else {
        _man = YES;
        [_manButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
        [_womanButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
    }
    
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
