//
//  ViewController.m
//  share
//
//  Created by cinderella on 2020/7/22.
//  Copyright © 2020 cinderella. All rights reserved.
//



#import "ViewController.h"
#import "RegisterViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface ViewController (){
     NSString *userStr;
     NSString *passStr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     //kaiji1.png是蓝色背景
     //将图片导入到项目中
    UIImage *kaiji = [UIImage imageNamed:@"kaiji1.png"] ;
    self.view.backgroundColor = [UIColor colorWithPatternImage:kaiji];
    
    //开机logo的图片
    UILabel *kaijiLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 200, 100, 50)];
    [self.view addSubview:kaijiLabel];
    kaijiLabel.text = @"SHARE" ;
    kaijiLabel.textColor = [UIColor whiteColor];
    kaijiLabel.font = [UIFont systemFontOfSize:30];
     
     //登陆账号和密码
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
     UIImage *kaijiLogoImage = [UIImage imageNamed:@"kaiji_logo.png"];
     UIImageView *kaijiLogoImageView = [[UIImageView alloc] initWithImage:kaijiLogoImage];
     kaijiLogoImageView.frame = CGRectMake(140, 90, 110, 110);
     [self.view addSubview:kaijiLogoImageView];
    
    UIImage *lineImage = [UIImage imageNamed:@"line.png"];
    UIImageView *lineImageView = [[UIImageView alloc] initWithImage:lineImage];
    lineImageView.frame = CGRectMake(50, 10, 2, 30);
    
    UIImage *userImage = [UIImage imageNamed:@"user_img.png"];
    UIImageView *userImageView = [[UIImageView alloc] initWithImage:userImage];
    userImageView.frame = CGRectMake(0, 0, 45, 45);
    
    UIView *user_View = [[UIView alloc] init];
    user_View.frame = CGRectMake(0, 0, 55, 50);
    [user_View addSubview:userImageView];
    [user_View addSubview:lineImageView];
    
    _userTextField = [[UITextField alloc] init];
    _userTextField.delegate = self;
    [self.view addSubview:_userTextField];
    _userTextField.frame = CGRectMake(30, 290, 320, 45);
    _userTextField.borderStyle = UITextBorderStyleRoundedRect;
    _userTextField.keyboardType = UIKeyboardTypeDefault;
    _userTextField.leftViewMode = UITextFieldViewModeAlways;
    _userTextField.leftView = user_View;
    
    UIImage *lineImage1 = [UIImage imageNamed:@"line.png"];
    UIImageView *lineImageView1 = [[UIImageView alloc] initWithImage:lineImage1];
    lineImageView1.frame = CGRectMake(50, 10, 2, 30);
    
    UIImage *passImage = [UIImage imageNamed:@"pass_img.png"];
    UIImageView *passImageView = [[UIImageView alloc] initWithImage:passImage];
    passImageView.frame = CGRectMake(0, 0, 45, 45);
    
    UIView *pass_View = [[UIView alloc] init];
    pass_View.frame = CGRectMake(0, 0, 55, 50);
    
    [pass_View addSubview:passImageView];
    [pass_View addSubview:lineImageView1];
    
    _passTextField = [[UITextField alloc] init];
    _passTextField.delegate = self;
    [self.view addSubview:_passTextField];
    _passTextField.frame = CGRectMake(30, 350, 320, 45);
    _passTextField.secureTextEntry = YES;
    _passTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passTextField.keyboardType = UIKeyboardTypeDefault;
    _passTextField.leftViewMode = UITextFieldViewModeAlways;
    _passTextField.leftView = pass_View;
    
    UIButton *loadButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [loadButton setTitle:@"登陆" forState:UIControlStateNormal];
    loadButton.titleLabel.font = [UIFont systemFontOfSize:20];
    loadButton.backgroundColor = [UIColor clearColor];
    loadButton.tintColor = [UIColor whiteColor];
    loadButton.layer.masksToBounds = YES;
    //layer.cornerRadius和layer.borderWidth的
     loadButton.layer.cornerRadius = 5;
    loadButton.layer.borderWidth = 2;
     loadButton.layer.borderColor = [UIColor whiteColor].CGColor;

     
    [loadButton addTarget:self action:@selector(pressLoad:) forControlEvents:UIControlEventTouchDown];
    loadButton.frame = CGRectMake(90, 420, 100, 40);
    [self.view addSubview:loadButton];
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:20];
    registerButton.backgroundColor = [UIColor clearColor];
    registerButton.tintColor = [UIColor whiteColor];
    registerButton.layer.masksToBounds = YES;
    registerButton.layer.cornerRadius = 5;
    registerButton.layer.borderWidth = 2;
    registerButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [registerButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchDown];
    registerButton.frame = CGRectMake(230, 420, 100, 40);
    [self.view addSubview:registerButton];
    
    UIButton *autoButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:autoButton];
    autoButton.frame = CGRectMake(50, 475, 20, 20);
    UIImage *autoCloseImage = [UIImage imageNamed:@"checkbox_unchecked.png"];
    [autoButton setImage:autoCloseImage forState:UIControlStateNormal];
    [autoButton addTarget:self action:@selector(pressAutoClose:) forControlEvents:UIControlEventTouchDown];
    
    

    UILabel *autoLabel = [[UILabel alloc] initWithFrame:CGRectMake(75, 475, 150, 20)];
    [self.view addSubview:autoLabel];
    autoLabel.text = @"自动登录";
    autoLabel.font = [UIFont systemFontOfSize:16];
    autoLabel.textColor = [UIColor blackColor];

      
     userStr = [[NSString alloc] init];
     passStr = [[NSString alloc] init];
    
    
}

- (void)pressLoad: (UIButton *) btn {
     NSString *name = @"Q";
     NSString *pass = @"q";
     
     NSString *strName = _userTextField.text;
     NSString *strPass = _passTextField.text;
     
    if(([name isEqualToString:strName] && [pass isEqualToString:strPass]) || ([strName isEqualToString:userStr] && [strPass isEqualToString:passStr] )) {
    //创建控制器
    FirstViewController *vcFirst = [[FirstViewController alloc] init];
    
    SecondViewController *vcSecond = [[SecondViewController alloc] init];
    
    ThirdViewController *vcThird = [[ThirdViewController alloc] init];
    
    FourthViewController *vcFourth = [[FourthViewController alloc] init] ;
    
    FifthViewController *vcFifth = [[FifthViewController alloc] init] ;
    
    vcFirst.view.backgroundColor = [UIColor whiteColor];
    vcSecond.view.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1.0];
    vcThird.view.backgroundColor = [UIColor whiteColor];
    vcFourth.view.backgroundColor = [UIColor whiteColor];
    vcFifth.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vcFirst] ;
     nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
         [nav1.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vcSecond] ;
     [nav2.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];
     nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
         
    UINavigationController *nav3 = [[UINavigationController alloc ]initWithRootViewController:vcThird] ;
     nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
         [nav3.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UINavigationController *nav4 = [[UINavigationController alloc ]initWithRootViewController:vcFourth] ;
     nav4.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
         [nav4.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:vcFifth] ;
     nav5.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
         [nav5.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UITabBarController* tbController = [[UITabBarController alloc] init];
     tbController.tabBar.barTintColor = [UIColor whiteColor];
    NSArray *arrayVC = [NSArray arrayWithObjects:nav1, nav2, nav3, nav4, nav5, nil] ;
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    //将分栏控制器作为根视图控制器
    self.view.window.rootViewController = tbController;
    tbController.tabBar.translucent = NO;
    
    } else {
         UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号或密码输入错误" preferredStyle:UIAlertControllerStyleAlert];
         UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
         [alert addAction:sureAction];
         [self presentViewController:alert animated:NO completion:nil];
    }
    
}

- (void)pressRegister: (UIButton *) btn {
    
     RegisterViewController *root = [[RegisterViewController alloc] init];
     
     root.modalPresentationStyle = UIModalPresentationFullScreen;
     //[self presentViewController:root animated:YES completion:nil];
     
     [root returnText:^(NSString *showText){
          self->_userTextField.text = showText;
          self->userStr = showText;
     }];
     [root returnText2:^(NSString *showText){
          self->_passTextField.text = showText;
          self->passStr = showText;
     }];
     [self presentViewController:root animated:NO completion:nil];
    
}

- (void)pressAutoClose: (UIButton *) btn {
    UIImage *autoOpenImage = [UIImage imageNamed:@"checkbox_checked.png"];
    [btn setImage:autoOpenImage forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressAutoOpen:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressAutoOpen: (UIButton *) btn {
    UIImage *autoCloseImage = [UIImage imageNamed:@"checkbox_unchecked.png"];
    [btn setImage:autoCloseImage forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressAutoClose:) forControlEvents:UIControlEventTouchDown];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //关闭键盘
     [self.view endEditing:YES];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
     if (!textField.window.isKeyWindow) {
          [textField.window makeKeyAndVisible];
     }
}

-(void)keyboardWillShow : (NSNotification *)notify {
     CGFloat kbHeight = [[notify.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
     CGFloat offset = kbHeight - 100;
     
     double duration = [[notify.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
     
     if (offset > 0) {
          [UIView animateWithDuration:duration animations:^{
               self.view.frame = CGRectMake(0.0f, -offset, self.view.frame.size.width, self.view.frame.size.height);
          }];
     }
}

-(void)keyboardWillHide: (NSNotification *)notify {
     double duration = [[notify.userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] doubleValue];
     [UIView animateWithDuration:duration animations:^{
          self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
     }];
}
-(void)dealloc {
     [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
     [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
     if (textField == _userTextField) {
          
          [_passTextField becomeFirstResponder];
     } else if (textField == _passTextField) {
          
          [textField resignFirstResponder];
     }
     return YES;
}

@end
