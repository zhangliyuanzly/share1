//
//  TAYTableViewCell.m
//  share
//
//  Created by cinderella on 2020/7/28.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "First1TableViewCell.h"

@implementation First1TableViewCell

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

-(void) layoutSubviews {
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(200, 0, 180, 60);
    
    _yanLabel.frame = CGRectMake(283, 110, 30, 20);
    
    _lineLabel.frame = CGRectMake(343, 110, 30, 20);
    
    _showImageView.frame = CGRectMake(0, 0, 180, 140);

    _yanImageView.frame = CGRectMake(260, 110, 20, 15);
    
    _lineImageView.frame = CGRectMake(320, 110, 20, 15);
    
    _writerLabel.frame = CGRectMake(200, 43, 100, 20);
    
    _contentLabel1.frame = CGRectMake(200, 63, 200, 15);
    
    _contentLabel2.frame = CGRectMake(200, 78, 200, 15);
    
    _zanSelect = NO;
    _button.frame = CGRectMake(200, 110, 20, 15);
    _button.tintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
    [_button setImage:image2 forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(pressZan) forControlEvents:UIControlEventTouchDown];
    
    _zanLabel.frame = CGRectMake(223, 110, 30, 20);
    _zanLabel.text = @"102";
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    
}

- (void)pressZan {
    
    if(_zanSelect == NO) {
        _zanSelect = YES;
        _zanLabel.text = @"103";
    } else {
        _zanSelect = NO;
        _zanLabel.text = @"102";
    }
    
}


@end
