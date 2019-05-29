//
//  ViewController.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/28.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()
@property(nonatomic,strong) UIView *redView;
@property(nonatomic,strong) UIView *yellowView;
@property(nonatomic,strong) UIView *blueView;
@property(nonatomic,strong) UIButton *actionButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.redView = [[UIView alloc]init];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_redView];
    [self.redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).mas_offset(@40);
        make.right.bottom.equalTo(self.view).mas_offset(@-40);
    }];
    
    //
    self.yellowView = [[UIView alloc]init];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    self.blueView = [[UIView alloc]init];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.redView addSubview:self.yellowView];
    [self.redView addSubview:self.blueView];
    
    
    [self.yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.redView).mas_offset(@30);
        make.left.equalTo(self.redView).mas_offset(@30);
        make.right.equalTo(self.redView).mas_offset(@-30);
        make.height.equalTo(@50);
    }];
    [self.blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.yellowView.mas_bottom).mas_offset(@30);
        make.right.equalTo(self.redView).mas_offset(@-30);
        make.height.equalTo(@50);
        make.width.equalTo(self.yellowView).multipliedBy(0.5);
    }];
    
    
//    [self.yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.redView).mas_offset(@45);
//        make.bottom.equalTo(self.redView).mas_offset(@-45);
//        make.height.equalTo(@80);
//        make.width.equalTo(@80);
//    }];
//
//    [self.blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.equalTo(self.redView).mas_offset(@-40);
//        make.bottom.equalTo(self.redView).mas_offset(@-45);
//        make.height.equalTo(self.yellowView);
//        make.width.equalTo(self.yellowView);
//    }];
   
    
}




@end
