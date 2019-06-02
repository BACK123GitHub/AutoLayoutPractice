//
//  ViewController.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/28.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "ViewController.h"
#import "bkCollectionView.h"
#import "Masonry.h"

@interface ViewController ()
;
@property(nonatomic,strong) bkCollectionView *collTL;
@property(nonatomic,strong) bkCollectionView *collTR;
@property(nonatomic,strong) bkCollectionView *collBL;
@property(nonatomic,strong) bkCollectionView *collBR;
@property(nonatomic,strong) UIView *yellowView;

@end

@implementation ViewController

- (bkCollectionView *)collTL
{
    if(_collTL==nil)
    {
        _collTL = [[bkCollectionView alloc]init];
        _collTL.backgroundColor = [UIColor redColor];
        [self.view addSubview:_collTL];
    }
    return _collTL;
}

- (bkCollectionView *)collTR
{
    if(_collTR==nil)
    {
        _collTR = [[bkCollectionView alloc]initWithFrame:CGRectZero];
        _collTR.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:_collTR];
    }
    return _collTR;
}

- (bkCollectionView *)collBL
{
    if(_collBL==nil)
    {
        _collBL = [[bkCollectionView alloc]init];
        _collBL.backgroundColor = [UIColor blueColor];
        [self.view addSubview:_collBL];
    }
    return _collBL;
}

- (bkCollectionView *)collBR
{
    if(_collBR==nil)
    {
        _collBR = [[bkCollectionView alloc]init];
        _collBR.backgroundColor = [UIColor greenColor];
        [self.view addSubview:_collBR];
    }
    return _collBR;
}

- (UIView *)yellowView
{
    if(_yellowView==nil)
    {
        _yellowView = [[UIView alloc]init];
        _yellowView.backgroundColor=[UIColor yellowColor];
        [self.view addSubview:_yellowView];
    }
    return _yellowView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.collTL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(self.view.mas_height).multipliedBy(0.5);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.5);
        make.top.equalTo(self.view.mas_top);
        make.left.equalTo(self.view.mas_left);
    }];
    [self.collBL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.collTL);
        make.bottom.equalTo(self.view.mas_bottom);
        make.left.equalTo(self.view.mas_left);
    }];
    
    [self.yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.collTL);
        make.top.equalTo(self.view.mas_top);
        make.right.equalTo(self.view.mas_right);
    }];
    [self.collTR mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.collTL);
        make.top.equalTo(self.view.mas_top);
        make.right.equalTo(self.view.mas_right);
    }];
    
    [self.collBR mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.collTL);
        make.bottom.equalTo(self.view.mas_bottom);
        make.right.equalTo(self.view.mas_right);
    }];
}


- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"collTL address: %@",_collTL);
    NSLog(@"collBL address: %@",_collBL);
    NSLog(@"collTR address: %@",_collTR);
}

@end
