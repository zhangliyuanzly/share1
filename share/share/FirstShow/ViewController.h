//
//  ViewController.h
//  share
//
//  Created by cinderella on 2020/7/22.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITextFieldDelegate
>

//文本文件
//第二个是密码传值
//第一个是账号传值
@property UITextField *passTextField;
@property UITextField *userTextField;


@end

