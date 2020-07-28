//
//  SecondeSelectViewController.m
//  share
//
//  Created by cinderella on 2020/7/25.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "SecondeSelectViewController.h"
#import "SecondShangViewController.h"
#import "SecondCollectionViewCell.h"

@interface SecondeSelectViewController () {
    UIImageView *unSelectImageView;
    UIImageView *selectImageView;
    NSMutableArray * nameArr;
}

@end

@implementation SecondeSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"选择图片";
    
    _numm = 0;
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    nameArr = [[NSMutableArray alloc] init];
    
    for(int i = 0; i < 30; i++){
        [nameArr addObject:[NSMutableString stringWithFormat:@"image-%d.jpg", i + 1]];
    }
    
    UIBarButtonItem *shangButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"上传" style:UIBarButtonItemStylePlain target:self action:@selector(pressShang)];
    shangButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = shangButtonItem;
    
    self.navigationController.navigationBar.translucent = NO;
    
    UIImage *image = [UIImage imageNamed:@"my_button_pressed.png"];
    selectImageView = [[UIImageView alloc] initWithImage:image];
    selectImageView.frame = CGRectMake(70, 0, 25, 25);
    
    _layOut = [[UICollectionViewFlowLayout alloc] init];
    _myCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 111) collectionViewLayout:_layOut];
    [self.view addSubview:_myCollectionView];
    
    _myCollectionView.backgroundColor = [UIColor whiteColor];
    _layOut.minimumLineSpacing = 5;
    _layOut.minimumInteritemSpacing = 5;
    _layOut.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    _myCollectionView.dataSource = self;
    _myCollectionView.delegate = self;
    
    [_myCollectionView registerClass:[SecondCollectionViewCell class] forCellWithReuseIdentifier:@"111"];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 30;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(90, 90);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
   SecondCollectionViewCell *cell = [_myCollectionView dequeueReusableCellWithReuseIdentifier:@"111" forIndexPath:indexPath];
    
    [cell.button setImage:[UIImage imageNamed: nameArr[indexPath.item]] forState:UIControlStateNormal];
    [cell.button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if(!_image){
        _image = selectImageView.image;
    }
    NSLog(@"sure");
    if(selectImageView.tag == 0) {
        selectImageView.tag = 1;
        NSLog(@"%ld", (long)selectImageView.tag);
        _numm++;
        UIImage *image = [UIImage imageNamed:@"my_button_pressed.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(70, 0, 25, 25);
        [selectImageView addSubview:imageView];
    } else {
        selectImageView.tag = 0;
        _numm--;
        [selectImageView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    }
}

- (void)press:(UIButton *) btn{
    
    if(!_image){
        _image = btn.imageView.image;
    }
    
    UIView * cellView = btn.superview.superview;
    UICollectionView * collectionView = (UICollectionView *)cellView;
    
    if(btn.selected == NO){
        btn.selected = YES;
        _numm++;
        [btn addSubview:selectImageView];
        selectImageView.alpha = 1;
    } else {
        _numm--;
        btn.selected = NO;
        selectImageView.alpha = 0;
    }
    
}


- (void)pressShang{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"是否要上传该图片" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action){
        UIAlertController *alert2 = [UIAlertController alertControllerWithTitle:@"" message:@"图片已上传成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action){
            
            [self.navigationController popViewControllerAnimated:NO];

        }];
        [alert2 addAction:sureAction2];
        [self presentViewController:alert2 animated:NO completion:nil];
        }];
    [alert addAction:cancelAction];
    [alert addAction:sureAction];
    [self presentViewController:alert animated:NO completion:nil];
    
}

- (void)returnText:(ReturnTextBlock)block{
    self.returnTextBlock = block;
}

- (void)returnText2:(ReturnTextBlock2)block2{
    self.returnTextBlock2 = block2;
}

- (void)viewWillDisappear:(BOOL)animated{
    if(self.returnTextBlock != nil){
        self.returnTextBlock(self.image);
    }
    if(self.returnTextBlock2 != nil){
        _num = @(_numm);
        self.returnTextBlock2(self.num);
    }
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
