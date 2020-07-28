//
//  SecondViewController.m
//  share
//
//  Created by cinderella on 2020/7/26.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "SecondSonViewController.h"
#import "SecondShangViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] init];
    tarBarItem.image = [[UIImage imageNamed:@"button2_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"button2_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self.navigationItem.title = @"搜索";
    
    UIImage *imageShang = [UIImage imageNamed:@"上传.png"];
    UIBarButtonItem *_btnShang = [[UIBarButtonItem alloc] initWithImage:imageShang style:UIBarButtonItemStylePlain target:self action:@selector(pressBtnShang)] ;
    _btnShang.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = _btnShang;
    
    _searchTextField = [[UITextField alloc] initWithFrame:CGRectMake(5, 100, 350, 30)];
    [self.view addSubview:_searchTextField];
    _searchTextField.placeholder = @"搜索 用户名 作品分类 文章";
    _searchTextField.textAlignment = NSTextAlignmentLeft;

    _searchTextField.borderStyle = UITextBorderStyleRoundedRect;
    _searchTextField.keyboardType = UIKeyboardTypeDefault;
    _searchTextField.leftViewMode = UITextFieldViewModeAlways;
    
    _searchTextField.delegate = self;
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(5, 140, 60, 25)];
    [self.view addSubview:label1];
    label1.backgroundColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label1.text = @"      分类";
    label1.font = [UIFont systemFontOfSize:14];
    label1.textColor = [UIColor whiteColor];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(5, 295, 60, 25)];
    [self.view addSubview:label2];
    label2.backgroundColor =[UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label2.text = @"      推荐";
    label2.font = [UIFont systemFontOfSize:14];
    label2.textColor = [UIColor whiteColor];
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(5, 400, 60, 25)];
    [self.view addSubview:label3];
    label3.backgroundColor =[UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label3.text = @"      时间";
    label3.font = [UIFont systemFontOfSize:14];
    label3.textColor = [UIColor whiteColor];
    
    UIImage *image1 = [UIImage imageNamed:@"标题.png"];
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
    [self.view addSubview:imageView1];
    imageView1.frame = CGRectMake(5, 140, 20, 20);
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image1];
    [self.view addSubview:imageView2];
    imageView2.frame = CGRectMake(5, 260, 20, 20);
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image1];
    [self.view addSubview:imageView3];
    imageView3.frame = CGRectMake(5, 325, 20, 20);
    
    UIImage *image2 = [UIImage imageNamed:@"home_line.png"];
    UIImageView *lineImageView1 = [[UIImageView alloc] initWithImage:image2];
    lineImageView1.frame = CGRectMake(5, 165, 409, 1);
    [self.view addSubview:lineImageView1];
    
    UIImageView *lineImageView2 = [[UIImageView alloc] initWithImage:image2];
    //这里有改动
    lineImageView2.frame = CGRectMake(5, 320, 409, 1);
    [self.view addSubview:lineImageView2];
    
    UIImageView *lineImageView3 = [[UIImageView alloc] initWithImage:image2];
    lineImageView3.frame = CGRectMake(5, 425, 409, 1);
    [self.view addSubview:lineImageView3];
    
    UIButton *fenButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:fenButton1];
    [fenButton1 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    fenButton1.frame = CGRectMake(5, 190, 96, 20);
    fenButton1.tintColor = [UIColor blackColor];
    fenButton1.layer.cornerRadius = 5;
    fenButton1.backgroundColor = [UIColor whiteColor];
    [fenButton1 setTitle:@"平面设计" forState:UIControlStateNormal];
    
    UIButton *fenButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:fenButton2];
    [fenButton2 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    fenButton2.tintColor = [UIColor blackColor];
    fenButton2.layer.cornerRadius = 5;
    fenButton2.backgroundColor = [UIColor whiteColor];
    fenButton2.frame = CGRectMake(106, 190, 96, 20);
    [fenButton2 setTitle:@"网页设计" forState:UIControlStateNormal];
    
    UIButton *fenButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:fenButton3];
    [fenButton3 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    fenButton3.tintColor = [UIColor blackColor];
    fenButton3.layer.cornerRadius = 5;
    fenButton3.backgroundColor = [UIColor whiteColor];
    fenButton3.frame = CGRectMake(207, 190, 96, 20);
    [fenButton3 setTitle:@"UI/icon" forState:UIControlStateNormal];
    
    UIButton *fenButton4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:fenButton4];
    [fenButton4 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    fenButton4.tintColor = [UIColor blackColor];
    fenButton4.layer.cornerRadius = 5;
    fenButton4.backgroundColor = [UIColor whiteColor];
    fenButton4.frame = CGRectMake(5, 260, 96, 20);
    [fenButton4 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    
    UIButton *tuiButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:tuiButton1];
    [tuiButton1 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    tuiButton1.tintColor = [UIColor blackColor];
    tuiButton1.layer.cornerRadius = 5;
    tuiButton1.backgroundColor = [UIColor whiteColor];
    tuiButton1.frame = CGRectMake(5, 335, 96, 20);
    [tuiButton1 setTitle:@"人气最高" forState:UIControlStateNormal];
    
    UIButton *tuiButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:tuiButton2];
    [tuiButton2 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    tuiButton2.tintColor = [UIColor blackColor];
    tuiButton2.layer.cornerRadius = 5;
    tuiButton2.backgroundColor = [UIColor whiteColor];
    tuiButton2.frame = CGRectMake(106, 335, 96, 20);
    [tuiButton2 setTitle:@"收藏最多" forState:UIControlStateNormal];
    
    UIButton *tuiButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:tuiButton3];
    [tuiButton3 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    tuiButton3.tintColor = [UIColor blackColor];
    tuiButton3.layer.cornerRadius = 5;
    tuiButton3.backgroundColor = [UIColor whiteColor];
    tuiButton3.frame = CGRectMake(207, 335, 96, 20);
    [tuiButton3 setTitle:@"评论最多" forState:UIControlStateNormal];
    
    UIButton *tuiButton4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:tuiButton4];
    [tuiButton4 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    tuiButton4.tintColor = [UIColor blackColor];
    tuiButton4.layer.cornerRadius = 5;
    tuiButton4.backgroundColor = [UIColor whiteColor];
    tuiButton4.frame = CGRectMake(5, 370, 96, 20);
    [tuiButton4 setTitle:@"编辑精选" forState:UIControlStateNormal];
    
    
    UIButton *timeButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:timeButton1];
    [timeButton1 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    timeButton1.tintColor = [UIColor blackColor];
    timeButton1.layer.cornerRadius = 5;
    timeButton1.backgroundColor = [UIColor whiteColor];
    timeButton1.frame = CGRectMake(5, 440, 96, 20);
    [timeButton1 setTitle:@"30分钟前" forState:UIControlStateNormal];
    
    UIButton *timeButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     [self.view addSubview:timeButton2];
    [timeButton2 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    timeButton2.tintColor = [UIColor blackColor];
    timeButton2.layer.cornerRadius = 5;
    timeButton2.backgroundColor = [UIColor whiteColor];
    timeButton2.frame = CGRectMake(106, 440, 96, 20);
    [timeButton2 setTitle:@"1小时前" forState:UIControlStateNormal];
    
    UIButton *timeButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     [self.view addSubview:timeButton3];
    [timeButton3 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    timeButton3.tintColor = [UIColor blackColor];
    timeButton3.layer.cornerRadius = 5;
    timeButton3.backgroundColor = [UIColor whiteColor];
    timeButton3.frame = CGRectMake(207, 440, 96, 20);
    [timeButton3 setTitle:@"1月前" forState:UIControlStateNormal];
    
    UIButton *timeButton4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     [self.view addSubview:timeButton4];
    [timeButton4 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    timeButton4.tintColor = [UIColor blackColor];
    timeButton4.layer.cornerRadius = 5;
    timeButton4.backgroundColor = [UIColor whiteColor];
    timeButton4.frame = CGRectMake(5, 475, 96, 20);
    [timeButton4 setTitle:@"1年前" forState:UIControlStateNormal];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(5, 225, 102, 20);
    [button4 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    [self.view addSubview:button4];
    [button4 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    button4.tintColor = [UIColor blackColor];
    button4.layer.cornerRadius = 5;
    button4.backgroundColor = [UIColor whiteColor];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(112, 225, 89, 20);
    [button5 setTitle:@"影视" forState:UIControlStateNormal];
    [self.view addSubview:button5];
    [button5 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    button5.tintColor = [UIColor blackColor];
    button5.layer.cornerRadius = 5;
    button5.backgroundColor = [UIColor whiteColor];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake(206, 225, 96, 20);
    button6.tintColor = [UIColor blackColor];
    [button6 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    button6.layer.cornerRadius = 5;
    button6.backgroundColor = [UIColor whiteColor];
    [button6 setTitle:@"摄影" forState:UIControlStateNormal];
    [self.view addSubview:button6];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.tintColor = [UIColor blackColor];
    [button7 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
    button7.layer.cornerRadius = 5;
    button7.backgroundColor = [UIColor whiteColor];
    button7.frame = CGRectMake(106, 260, 96, 20);
    [button7 setTitle:@"其他" forState:UIControlStateNormal];
    [self.view addSubview:button7];
    
}

- (void)pressBtnShang{
    SecondShangViewController *second = [[SecondShangViewController alloc] init];
    [self.navigationController pushViewController:second animated:NO];
}


- (void)pressSelect:(UIButton *) btn{
    btn.tintColor = [UIColor whiteColor];
    btn.backgroundColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    [btn addTarget:self action:@selector(pressUnselect:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressUnselect:(UIButton *) btn{
    btn.tintColor = [UIColor blackColor];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
}


//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    SecondSonViewController *root = [[SecondSonViewController alloc] init];
    [self.navigationController pushViewController:root animated:NO];
    return YES;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
