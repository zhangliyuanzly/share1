//
//  UpViewController.h
//  share
//
//  Created by cinderella on 2020/7/27.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource,
UIScrollViewDelegate
>

@property UIScrollView *scrollView;
@property UITableView *tableView1;
@property UITableView *tableView2;
@property UITableView *tableView3;
@property UISegmentedControl *segmentedControl;

@end

NS_ASSUME_NONNULL_END
