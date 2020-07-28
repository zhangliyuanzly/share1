//
//  SecondShangViewController.h
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondShangViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>


@property UITextField *proTextField;
@property UITextView *messTextView;
@property UIImageView *localImageView;
@property UILabel *localLabel;
@property UITableView *tableView;
@property UIButton *selectButton;
@property UIButton *upButton;
@property UITableView *ttableView;
@property UIButton *ttButton;
@property BOOL openSelect;
@property UITableViewCell *cell;
@property UIImageView *iimageView;
@property NSMutableString *str;
@property NSMutableArray *strArr;
@property NSNumber *num;

@end

NS_ASSUME_NONNULL_END
