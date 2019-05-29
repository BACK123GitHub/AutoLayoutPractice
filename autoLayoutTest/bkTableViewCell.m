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

- (void)layoutSubviews
{
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.top.left.equalTo(self.contentView).mas_offset(CellPadding);
    }];
    [self.detailTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView).right.offset(CellPadding);
        make.top.equalTo(self.contentView).offset(CellPadding);
        make.right.bottom.equalTo(self.contentView).offset(CellPadding);
        make.height.greaterThanOrEqualTo(@30);
    }];
}


@end
