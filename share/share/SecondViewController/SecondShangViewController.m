//
//  SecondShangViewController.m
//  share
//
//  Created by cinderella on 2020/7/24.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecondShangViewController.h"
#import "SecondeSelectViewController.h"

@interface SecondShangViewController ()

@end

@implementation SecondShangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1.0];
    
    _openSelect = NO;
    
    _strArr = [[NSMutableArray alloc] init];
    [_strArr addObject:@"原创作品"];
    
    self.ttableView = [[UITableView alloc] init];
    [self.view addSubview:_ttableView];
    self.ttableView.frame = CGRectMake(245, 155, 100, 25);
    
    _ttableView.delegate = self;
    _ttableView.dataSource = self;

    _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButton.frame = CGRectMake(10, 80, 230, 140);
    [self.view addSubview:_selectButton];
    [_selectButton setTitle:@"请选择图片" forState:UIControlStateNormal];
    _selectButton.backgroundColor = [UIColor grayColor];
    _selectButton.tintColor = [UIColor whiteColor];
    [_selectButton addTarget:self action:@selector(pressImage) forControlEvents:UIControlEventTouchDown];
    
    _localImageView = [[UIImageView alloc] init];
    [self.view addSubview:_localImageView];
    UIImage *image = [UIImage imageNamed:@"坐标.png"];
    _localImageView.image = image;
    _localImageView.frame = CGRectMake(240, 120, 25, 25);
    
    _localLabel = [[UILabel alloc] init];
    _localLabel.text = @"陕西省，宝鸡市";
    [self.view addSubview:_localLabel];
    _localLabel.textAlignment = NSTextAlignmentCenter;
    _localLabel.font = [UIFont systemFontOfSize:12];
    _localLabel.textColor = [UIColor whiteColor];
    _localLabel.layer.masksToBounds = YES;
    _localLabel.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.85 alpha:1.0];
    _localLabel.frame = CGRectMake(265, 120, 100, 25);
    _localLabel.layer.cornerRadius = 10;
    
    NSArray *nameArr1 = @[@"平面设计", @"网页设计", @"UI/icon", @"插画/手绘"];
    NSArray *nameArr2 = @[@"虚拟与设计", @"影视", @"摄影", @"其他"];
    for(int i = 0; i < 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.view addSubview:btn];
        btn.frame = CGRectMake(i * 96 + 5, 260, 90, 25);
        [btn setTitle: [NSString stringWithFormat:@"%@", nameArr1[i]]  forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
        btn.tintColor = [UIColor blackColor];
        btn.backgroundColor = [UIColor whiteColor];
        
    }
    for(int i = 0; i < 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.view addSubview:btn];
        btn.frame = CGRectMake(i * 96 + 5, 295, 90, 25);
        [btn setTitle: [NSString stringWithFormat:@"%@", nameArr2[i]]  forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchDown];
        btn.tintColor = [UIColor blackColor];
        btn.backgroundColor = [UIColor whiteColor];
    }
    
    _proTextField = [[UITextField alloc] init];
    [self.view addSubview:_proTextField];
    _proTextField.placeholder = @"   作品名称";
    _proTextField.font = [UIFont systemFontOfSize:15];
    _proTextField.backgroundColor = [UIColor whiteColor];
    _proTextField.frame = CGRectMake(0, 330, 414, 25);
    
    _messTextView = [[UITextView alloc] init];
    [self.view addSubview:_messTextView];
    _messTextView.text = @"   请添加作品说明文章内容......";
    _messTextView.textAlignment = NSTextAlignmentLeft;
    _messTextView.backgroundColor = [UIColor whiteColor];
    _messTextView.frame= CGRectMake(0, 360, 414, 85);
    
    _upButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:_upButton];
    [_upButton setTitle:@"发布" forState:UIControlStateNormal];
    [_upButton addTarget:self action:@selector(pressUp) forControlEvents:UIControlEventTouchDown];
    _upButton.frame = CGRectMake(5, 453, 400, 40);
    _upButton.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.85 alpha:1.0];
    _upButton.titleLabel.font = [UIFont systemFontOfSize:20];
    _upButton.tintColor = [UIColor whiteColor];
    
    UIButton *autoButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:autoButton];
    autoButton.frame = CGRectMake(5, 495, 20, 20);
    UIImage *autoCloseImage = [UIImage imageNamed:@"checkbox_unchecked.png"];
    [autoButton setImage:autoCloseImage forState:UIControlStateNormal];
    [autoButton addTarget:self action:@selector(pressAutoClose:) forControlEvents:UIControlEventTouchDown];
    
    UILabel *autoLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 495, 150, 20)];
    [self.view addSubview:autoLabel];
    autoLabel.text = @"禁止下载";
    autoLabel.font = [UIFont systemFontOfSize:16];
    autoLabel.textColor = [UIColor blackColor];
    
    
    [_ttableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"111"];
    
}


-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //关闭键盘
     [self.view endEditing:YES];
}

- (void)pressImage{
    
    SecondeSelectViewController *root = [[SecondeSelectViewController alloc] init];
    [root returnText:^(UIImage *imagee){
        [self->_selectButton setImage:imagee forState:UIControlStateNormal];
    }];
    [root returnText2:^(NSNumber *num){
        self -> _num = num;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(210, 1, 15, 15)];
        label.backgroundColor = [UIColor redColor];
        label.textColor = [UIColor whiteColor];
        label.text = [NSString stringWithFormat:@"%@", self.num];

        [self->_selectButton addSubview:label];
    }];

    [self.navigationController pushViewController:root animated:NO];
    
}
 

- (void)pressUp{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"您已成功发布!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:NO completion:nil];
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    _cell = [_ttableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    
    if(_openSelect == YES){
    
        
        _cell.textLabel.text = _strArr[indexPath.row];
        _cell.textLabel.font = [UIFont systemFontOfSize:13];
        
    } else {
        
        _cell.textLabel.text = _strArr[indexPath.row];
        _cell.textLabel.font = [UIFont systemFontOfSize:13];
        
    }
    
    return _cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(_openSelect == NO){
        return 1;
    } else {
        return 4;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 25;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    _str = [NSMutableString stringWithString:_strArr[indexPath.row]];
    [_strArr insertObject:_str atIndex:0];
    [_strArr removeObjectAtIndex:indexPath.row + 1];
    _openSelect = NO;
    _ttableView.frame = CGRectMake(275, 155, 100, 25);
    [_ttButton setImage:[UIImage imageNamed:@"close1.png"] forState:UIControlStateNormal];
    [_ttableView reloadData];
    
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
