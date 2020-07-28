//
//  First2TableViewCell.h
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface First2TableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *writerLabel;
@property (nonatomic, strong) UILabel *contentLabel1;
@property (nonatomic, strong) UILabel *contentLabel2;
@property (nonatomic, strong) UILabel *zanLabel;
@property (nonatomic, strong) UILabel *yanLabel;
@property (nonatomic, strong) UILabel *lineLabel;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIButton *button2;
@property (nonatomic, strong) UIImageView *showImageView;
@property (nonatomic, strong) UIImageView *zanImageView;
@property (nonatomic, strong) UIImageView *yanImageView;
@property (nonatomic, strong) UIImageView *lineImageView;
@property  BOOL zanSelect;

- (void)pressZan;
@end

NS_ASSUME_NONNULL_END
