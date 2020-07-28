//
//  ThirdViewController.h
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController
<
UIScrollViewDelegate,
UITableViewDelegate,
UITableViewDataSource
>

@property UIScrollView *scrollView;
@property UITableView *tableView1;
@property UITableView *tableView2;
@property UITableView *tableView3;
//对显示的内容做进一步细分
@property UISegmentedControl *segmentedControl;

@end

NS_ASSUME_NONNULL_END
