//
//  RegisterViewController.m
//  share
//
//  Created by cinderella on 2020/7/22.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "RegisterViewController.h"
#import "ViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    UIImage *kaiji = [UIImage imageNamed:@"kaiji1.png"] ;
    self.view.backgroundColor = [UIColor colorWithPatternImage:kaiji];
    //self.view.frame = CGRectMake(0, 0, 414, 900);
    
    UIImage *kaijiLogoImage = [UIImage imageNamed:@"kaiji_logo.png"];
    UIImageView *kaijiLogoImageView = [[UIImageView alloc] initWithImage:kaijiLogoImage];
    kaijiLogoImageView.frame = CGRectMake(150, 90, 110, 110);
    [self.view addSubview:kaijiLogoImageView];
    
    //UIViewController *vc = [[UIViewController alloc] init];
    //vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //[self presentViewController:vc animated:NO completion:nil];
    //UIView* vc = [[UIView alloc] init];
    
    //显示一个新的视图控制器到屏幕上
    //P1:新的视图控制器对象
    //P2:是否使用动画切换效果
    //P3:切换结束后功能调用,不需要就传nil值即可
    //呈现全屏
    //vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //[self presentViewController:vc animated:YES completion:nil];
    
    UILabel *kaijiLabel = [[UILabel alloc] initWithFrame:CGRectMake(157, 200, 100, 50)];
    [self.view addSubview:kaijiLabel];
    kaijiLabel.text = @"SHARE" ;
    kaijiLabel.textColor = [UIColor whiteColor];
    kaijiLabel.font = [UIFont systemFontOfSize:30];
    
    UIImage *lineImage = [UIImage imageNamed:@"line.png"];
    UIImageView *lineImageView = [[UIImageView alloc] initWithImage:lineImage];
    lineImageView.frame = CGRectMake(45, 10, 2, 30);
    UIImage *massImage = [UIImage imageNamed:@"email_img.png"];
    UIImageView *massImageView = [[UIImageView alloc] initWithImage:massImage];
    massImageView.frame = CGRectMake(0, 0, 45, 45);
    
    UIView *mass_View = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55, 50)];
    [mass_View addSubview:massImageView];
    [mass_View addSubview:lineImageView];

    UIImage *lineImage2 = [UIImage imageNamed:@"line.png"];
    UIImageView *lineImageView2 = [[UIImageView alloc] initWithImage:lineImage2];
    lineImageView2.frame = CGRectMake(45, 10, 2, 30);
    UIImage *userImage = [UIImage imageNamed:@"user_img.png"];
    UIImageView *userImageView = [[UIImageView alloc] initWithImage:userImage];
    userImageView.frame = CGRectMake(0, 0, 45, 45);
    
    UIView *user_View = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55, 50)];
    [user_View addSubview:userImageView];
    [user_View addSubview:lineImageView2];

    UIImage *passImage = [UIImage imageNamed:@"pass_img.png"];
    UIImageView *passImageView = [[UIImageView alloc] initWithImage:passImage];
    passImageView.frame = CGRectMake(0, 0, 45, 45);
    UIImage *lineImage3 = [UIImage imageNamed:@"line.png"];
    UIImageView *lineImageView3 = [[UIImageView alloc] initWithImage:lineImage3];
    lineImageView3.frame = CGRectMake(45, 10, 2, 30);
    
    UIView *pass_View = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55, 50)];
    [pass_View addSubview:passImageView];
    [pass_View addSubview:lineImageView3];
    
    _massTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 260, 320, 45)];
    _massTextField.borderStyle = UITextBorderStyleRoundedRect;
    _massTextField.keyboardType = UIKeyboardTypeDefault;
    _massTextField.leftViewMode = UITextFieldViewModeAlways;
    _massTextField.leftView = mass_View;
    [self.view addSubview:_massTextField];
    
    _userTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 320, 320, 45)];
    _userTextField.borderStyle = UITextBorderStyleRoundedRect;
    _userTextField.keyboardType = UIKeyboardTypeDefault;
    _userTextField.leftViewMode = UITextBorderStyleRoundedRect;
    _userTextField.leftView = user_View;
    [self.view addSubview:_userTextField];
    
    _passTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 380, 320, 45)];
    _passTextField.secureTextEntry = YES;
    _passTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passTextField.keyboardType = UIKeyboardTypeDefault;
    _passTextField.leftViewMode = UITextBorderStyleRoundedRect;
    _passTextField.leftView = pass_View;
    [self.view addSubview:_passTextField];
    
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:_btn];
    [_btn setTitle:@"确认注册" forState:UIControlStateNormal];
    _btn.frame = CGRectMake(120, 500, 140, 50);
    _btn.titleLabel.font = [UIFont systemFontOfSize:20];
    _btn.backgroundColor = [UIColor clearColor];
    _btn.tintColor = [UIColor whiteColor];
    _btn.layer.masksToBounds = YES;
    _btn.layer.cornerRadius = 5;
    _btn.layer.borderWidth = 2;
    _btn.layer.borderColor = [UIColor whiteColor].CGColor;
    [_btn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    
    _massTextField.delegate = self;
    _passTextField.delegate = self;
    _userTextField.delegate = self;
    
    
}

- (void)press{
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == _massTextField) {
        
        [_userTextField becomeFirstResponder];
    } else if (textField == _userTextField) {
        
        [_passTextField becomeFirstResponder];
    } else if (textField == _passTextField){
        
        [textField resignFirstResponder];
    }
    
    return YES;
}

- (void)returnText:(ReturnTextBlock)block {
    self.returnTextBlock = block;
}

- (void)returnText2:(ReturnTextBlock2)block{
    self.returnTextBlock2 = block;
}

- (void)viewWillDisappear:(BOOL)animated {
    if(self.returnTextBlock != nil) {
        self.returnTextBlock(self.userTextField.text);
        self.returnTextBlock2(self.passTextField.text);
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



@end
