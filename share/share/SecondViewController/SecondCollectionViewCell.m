//
//  SecondCollectionViewCell.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecondCollectionViewCell.h"

@implementation SecondCollectionViewCell
//图片视图的显示

//- (instancetype)init

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {

        _button = [[UIButton alloc] init];
        [self.contentView addSubview:_button];
        
    }
    return self;
    
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
  //  _imageView1.frame = self.bounds;
    _button.frame = CGRectMake(0, 0 , 90, 90);
    
}



//- (void)setImageView:(UIImageView *)imageView1 {
//
//    _imageView1.frame = self.bounds;
//
//}

@end


