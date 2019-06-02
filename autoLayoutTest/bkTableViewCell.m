//
//  bkTableViewCell.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/29.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "bkTableViewCell.h"
#import "Masonry.h"
#define CellPadding 5

@implementation bkTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        self.imageView = [[UIImageView alloc]init];
//        
//        self.imageView.image=[UIImage imageNamed:@"test"];
//        self.textLabel.text=@"姓名";
//        self.detailTextLabel.text=@"我今天去玩了！";
//    }
//    return self;
//}



- (void)layoutSubviews
{
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.top.equalTo(self.contentView).with.mas_offset(CellPadding);
        make.left.equalTo(self.contentView).with.mas_offset(CellPadding);
    }];
    [self.textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView).with.offset(CellPadding);
        make.top.equalTo(self.contentView).with.offset(CellPadding);
        make.right.equalTo(self.contentView).with.offset(-CellPadding);
        make.height.greaterThanOrEqualTo(@30);
    }];
    [self.detailTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.textLabel);
        make.top.equalTo(self.textLabel).with.offset(CellPadding);
        make.right.equalTo(self.contentView).with.offset(-CellPadding);
        make.bottom.equalTo(self.contentView).with.offset(-CellPadding);
    }];
}


@end
