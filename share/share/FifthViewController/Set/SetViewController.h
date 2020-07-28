//
//  SetViewController.h
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SetViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
