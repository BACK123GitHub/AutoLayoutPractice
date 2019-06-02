//
//  bkCollectionView.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/29.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "bkCollectionView.h"

@implementation bkCollectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self)
    {
        [self addSubview:self.imageV];
        [self addSubview:self.text];
    }
    return self;
}



- (UIImageView *)imageV
{
    if(_imageV==nil)
    {
        _imageV=[[UIImageView alloc]init];
        _imageV.image=[UIImage imageNamed:@"test"];
       // [self addSubview:_imageV];
    }
    return _imageV;
}

- (UILabel *)text
{
    if(_text==nil)
    {
        _text=[[UILabel alloc]init];
        _text.text=@"账号";
        _text.textAlignment=NSTextAlignmentCenter;
        //[self addSubview:_text];
    }
    return _text;
}




- (void)layoutSubviews
{
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@90);
        make.height.equalTo(@90);
    }];
    [self.text mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.height.equalTo(@30);
    }];
}



@end
