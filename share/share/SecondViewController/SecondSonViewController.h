//
//  SecondSonViewController.h
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondSonViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource,
UITextFieldDelegate
>

@property UITextField *textField;
@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
