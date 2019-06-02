//
//  ViewController.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/28.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "ViewController.h"
#import "bkCollectionView.h"
#import "bkTableViewCell.h"
#import "Masonry.h"

@interface ViewController ()

@property(nonatomic,strong) bkCollectionView *collTL;
@property(nonatomic,strong) bkCollectionView *collTR;
@property(nonatomic,strong) bkCollectionView *collBL;
@property(nonatomic,strong) bkCollectionView *collBR;
@property(nonatomic,strong) UIView *yellowView;
@property(nonatomic,strong) bkTableViewCell* cell;

@end

@implementation ViewController

- (bkTableViewCell *)cell
{
    if(_cell==nil)
    {
        _cell = [[bkTableViewCell alloc]init];
        _cell.imageView.image=[UIImage imageNamed:@"test"];
        _cell.textLabel.text=@"姓名";
        _cell.detailTextLabel.text=@"我今天出去玩了";
        [self.view addSubview:_cell];
    }
    return _cell;
}


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
    [self.cell mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@350);
        make.height.equalTo(@200);
        make.left.equalTo(self.view).with.offset(20);
        make.top.equalTo(self.view.mas_top).with.offset(20);
    }];
}



@end
