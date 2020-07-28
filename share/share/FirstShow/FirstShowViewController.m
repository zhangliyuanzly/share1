//
//  FirstShowViewController.m
//  share
//
//  Created by cinderella on 2020/7/22.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "FirstShowViewController.h"
#import "ViewController.h"

@interface FirstShowViewController ()

@end

@implementation FirstShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *openImage = [UIImage imageNamed:@"开机界面.jpg"];
    UIImageView *openImageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:openImageView];
    [openImageView setImage:openImage];
    
    //设置停留时间
    [self performSelector:@selector(next) withObject:self afterDelay:3];
    
    
}

- (void)next{
    
    UIWindow *window = self.view.window;
    ViewController *root = [[ViewController alloc] init] ;
    window.rootViewController = root;
    
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
