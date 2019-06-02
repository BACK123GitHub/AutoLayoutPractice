//
//  bkCollectionController.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/29.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "bkCollectionController.h"
#import "bkCollectionView.h"

@interface bkCollectionController ()

@property(nonatomic,strong) bkCollectionView* collectionV;

@end

@implementation bkCollectionController

- (bkCollectionView *)collectionV
{
    if(_collectionV==nil)
    {
        _collectionV=[[bkCollectionView alloc]init];
        self.view=_collectionV;
    }
    return _collectionV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionV.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@90);
        make.height.equalTo(@90);
    }];
    [self.collectionV.text mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.collectionV.mas_bottom);
        make.left.equalTo(self.collectionV);
        make.right.equalTo(self.collectionV);
        make.height.equalTo(@30);
    }];
    // Do any additional setup after loading the view.
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
