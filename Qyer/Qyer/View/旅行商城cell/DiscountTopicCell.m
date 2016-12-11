//
//  DiscountTopicCell.m
//  Qyer
//
//  Created by Yang Xiong on 25/11/2016.
//  Copyright © 2016 DKD. All rights reserved.
//

#import "DiscountTopicCell.h"

@implementation DiscountTopicCell
-(UIColor *)backgroundColor
{
    return [UIColor colorWithRed:47 / 255.f green:176 / 255.f blue:116 / 255.f alpha:1.f];
}

-(UIColor *)buttonBorderColor
{
    return [UIColor colorWithRed:211 / 255.f green:211 / 255.f blue:211 / 255.f alpha:0.5];
}

-(UIView *)cityView
{
    if (!_cityView)
    {
        _cityView = [UIView new];
        [self.contentView addSubview:_cityView];
        [_cityView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0.f);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width);
        }];
        _cityView.backgroundColor = [UIColor whiteColor];
    }
    return _cityView;
}

-(UILabel *)cityTitle
{
    if (!_cityTitle)
    {
        _cityTitle = [UILabel new];
        [self.cityView addSubview:_cityTitle];
        [_cityTitle mas_makeConstraints:^(MASConstraintMaker *make)
         {
             make.top.equalTo((kHight *(988.f / 1132.f)) * (35.f / 988.f));
             make.left.right.equalTo(0.f);
             make.height.equalTo((kHight *(988.f / 1132.f)) * (20.f / 988.f));
             make.width.equalTo(kWidth);
         }];
        _cityTitle.textAlignment = NSTextAlignmentCenter;
        _cityTitle.font = [UIFont boldSystemFontOfSize:18.f];
    }
    return _cityTitle;
}


-(UIButton *)topIV
{
    if (!_topIV)
    {
        _topIV = [UIButton new];
        [self.contentView addSubview:_topIV];
        [_topIV mas_makeConstraints:^(MASConstraintMaker *make) {
            //CGFloat topHeight = self.contentView.size.height * (1 / 4.0);
            make.left.equalTo(kWidth * (30.f / 639.f));
            make.right.equalTo(-(kWidth * (30.f / 639.f)));
            make.top.equalTo(self.cityTitle.mas_bottom).offset((kHight *(988.f / 1132.f)) * (35.f / 988.f));
            make.width.equalTo(kWidth * (582.f / 639.f));
            make.height.equalTo((kHight *(988.f / 1132.f)) * (224.f / 988.f));

        }];
        _topIV.layer.cornerRadius = 4.f;
        _topIV.clipsToBounds = YES;
    }
    return _topIV;
}

-(UIButton *)cityDetail01Btn
{
    if (!_cityDetail01Btn)
    {
        _cityDetail01Btn = [UIButton new];
        [self.cityView addSubview:_cityDetail01Btn];
        [_cityDetail01Btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(kWidth * (30.f / 639.f));
            make.top.equalTo(self.topIV.mas_bottom).offset((kHight *(988.f / 1132.f)) * (30.f / 988.f));
            make.right.equalTo(-(kWidth * (30.f / 639.f)));
            make.width.equalTo(kWidth * (582.f / 639.f));
            make.height.equalTo((kHight *(988.f / 1132.f)) * (170.f / 988.f));
        }];
        _cityDetail01Btn.layer.borderWidth = 1.f;
        _cityDetail01Btn.layer.borderColor = self.buttonBorderColor.CGColor;
        _cityDetail01Btn.layer.cornerRadius = 3.f;
        _cityDetail01Btn.clipsToBounds = YES;
        
    }
    
    return _cityDetail01Btn;
}

-(UIButton *)cityDetail02Btn
{
    if (!_cityDetail02Btn)
    {
        _cityDetail02Btn = [UIButton new];
        [self.cityView addSubview:_cityDetail02Btn];
        [_cityDetail02Btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self.cityDetail01Btn);
            make.top.equalTo(self.cityDetail01Btn.mas_bottom).offset((kHight *(988.f / 1132.f)) * (30.f / 988.f));
            make.width.height.equalTo(self.cityDetail01Btn);
        }];
        _cityDetail02Btn.layer.borderWidth = 1.f;
        _cityDetail02Btn.layer.borderColor = self.buttonBorderColor.CGColor;
        _cityDetail02Btn.layer.cornerRadius = 3.f;
        _cityDetail02Btn.clipsToBounds = YES;
    }
    
    return _cityDetail02Btn;
}

-(UIButton *)cityDetail03Btn
{
    if (!_cityDetail03Btn)
    {
        _cityDetail03Btn = [UIButton new];
        [self.cityView addSubview:_cityDetail03Btn];
        [_cityDetail03Btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self.cityDetail01Btn);
            make.top.equalTo(self.cityDetail02Btn.mas_bottom).offset((kHight *(988.f / 1132.f)) * (30.f / 988.f));
            make.width.height.equalTo(self.cityDetail01Btn);
        }];
        _cityDetail03Btn.layer.borderWidth = 1.f;
        _cityDetail03Btn.layer.borderColor = self.buttonBorderColor.CGColor;
        _cityDetail03Btn.layer.cornerRadius = 5.f;
        _cityDetail03Btn.clipsToBounds = YES;
    }
    
    return _cityDetail03Btn;
}

-(UIImageView *)cityPic1
{
    if (!_cityPic1)
    {
        _cityPic1 = [UIImageView new];
        [self.cityDetail01Btn addSubview:_cityPic1];
        [_cityPic1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.equalTo(0.f);
            make.width.equalTo(kWidth * (140.f / 639.f));
            make.height.equalTo(self.cityDetail01Btn);
        }];
    }
    
    return _cityPic1;
}

-(UIImageView *)cityPic2
{
    if (!_cityPic2)
    {
        _cityPic2 = [UIImageView new];
        [self.cityDetail02Btn addSubview:_cityPic2];
        [_cityPic2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.equalTo(0.f);
            make.width.equalTo(self.cityPic1);
            make.height.equalTo(self.cityPic1);
        }];
    }
    
    return _cityPic2;
}

-(UIImageView *)cityPic3
{
    if (!_cityPic3)
    {
        _cityPic3 = [UIImageView new];
        [self.cityDetail03Btn addSubview:_cityPic3];
        [_cityPic3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.equalTo(0.f);
            make.width.equalTo(self.cityPic1);
            make.height.equalTo(self.cityPic1);
        }];
    }
    
    return _cityPic3;
}

-(UILabel *)title1LB
{
    if (!_title1LB)
    {
        _title1LB = [UILabel new];
        [self.cityDetail01Btn addSubview:_title1LB];
        [_title1LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.cityPic1.mas_right).offset(kWidth * (15.f / 639.f));
            make.top.equalTo((kHight *(988.f / 1132.f)) * (12.f / 988.f));
            make.right.equalTo(-(kWidth * (15.f / 639.f)));
        }];
        _title1LB.numberOfLines = 2.f;
        _title1LB.font = [UIFont systemFontOfSize:13.f];
    }
    
    return _title1LB;
}

-(UILabel *)title2LB
{
    if (!_title2LB)
    {
        _title2LB = [UILabel new];
        [self.cityDetail02Btn addSubview:_title2LB];
        [_title2LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.cityPic2.mas_right).offset(kWidth * (15.f / 639.f));
            make.top.equalTo((kHight *(988.f / 1132.f)) * (12.f / 988.f));
            make.right.equalTo(-(kWidth * (15.f / 639.f)));
        }];
        _title2LB.numberOfLines = 2.f;
        _title2LB.font = [UIFont systemFontOfSize:13.f];
    }
    
    return _title2LB;
}

-(UILabel *)title3LB
{
    if (!_title3LB)
    {
        _title3LB = [UILabel new];
        [self.cityDetail03Btn addSubview:_title3LB];
        [_title3LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.cityPic3.mas_right).offset(kWidth * (15.f / 639.f));
            make.top.equalTo((kHight *(988.f / 1132.f)) * (12.f / 988.f));
            make.right.equalTo(-(kWidth * (15.f / 639.f)));
        }];
        _title3LB.numberOfLines = 2.f;
        _title3LB.font = [UIFont systemFontOfSize:13.f];
    }
    
    return _title3LB;
}

-(UILabel *)sold1LB
{
    if (!_sold1LB)
    {
        _sold1LB = [UILabel new];
        [self.cityDetail01Btn addSubview:_sold1LB];
        [_sold1LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.title1LB);
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _sold1LB.font = [UIFont systemFontOfSize:11.f];
        _sold1LB.textColor = [UIColor lightGrayColor];
    }
    
    return _sold1LB;
}

-(UILabel *)sold2LB
{
    if (!_sold2LB)
    {
        _sold2LB = [UILabel new];
        [self.cityDetail02Btn addSubview:_sold2LB];
        [_sold2LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.title2LB);
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _sold2LB.font = [UIFont systemFontOfSize:11.f];
        _sold2LB.textColor = [UIColor lightGrayColor];
    }
    
    return _sold2LB;
}

-(UILabel *)sold3LB
{
    if (!_sold3LB)
    {
        _sold3LB = [UILabel new];
        [self.cityDetail03Btn addSubview:_sold3LB];
        [_sold3LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.title3LB);
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _sold3LB.font = [UIFont systemFontOfSize:11.f];
        _sold3LB.textColor = [UIColor lightGrayColor];
    }
    
    return _sold3LB;
}

-(UILabel *)price1LB
{
    if (!_price1LB)
    {
        _price1LB = [UILabel new];
        [self.cityDetail01Btn addSubview:_price1LB];
        [_price1LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-(kWidth * (15.f / 639.f)));
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _price1LB.font = [UIFont systemFontOfSize:13.f];
        _price1LB.textAlignment = NSTextAlignmentRight;
        _price1LB.textColor = [UIColor redColor];
    }
    
    return _price1LB;
}

-(UILabel *)price2LB
{
    if (!_price2LB)
    {
        _price2LB = [UILabel new];
        [self.cityDetail02Btn addSubview:_price2LB];
        [_price2LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-10);
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _price2LB.font = [UIFont systemFontOfSize:13.f];
        _price2LB.textAlignment = NSTextAlignmentRight;
        _price2LB.textColor = [UIColor redColor];
    }
    
    return _price2LB;
}

-(UILabel *)price3LB
{
    if (!_price3LB)
    {
        _price3LB = [UILabel new];
        [self.cityDetail03Btn addSubview:_price3LB];
        [_price3LB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-(kWidth * (15.f / 639.f)));
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (15.f / 988.f));
        }];
        _price3LB.font = [UIFont systemFontOfSize:13.f];
        _price3LB.textAlignment = NSTextAlignmentRight;
        _price3LB.textColor = [UIColor redColor];
    }
    
    return _price3LB;
}

-(UIButton *)moreContentBtn
{
    if (!_moreContentBtn)
    {
        _moreContentBtn = [UIButton new];
        [self.cityView addSubview:_moreContentBtn];
        [_moreContentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0.f);
            make.bottom.equalTo(-(kHight *(988.f / 1132.f)) * (28.f / 988.f));
            make.height.equalTo((kHight *(988.f / 1132.f)) * (35.f / 988.f));
            make.width.equalTo([UIScreen mainScreen].bounds.size.width);
        }];
        _moreContentBtn.titleLabel.font = [UIFont systemFontOfSize:12.f];
        _moreContentBtn.titleLabel.textColor = [UIColor blackColor];
        _moreContentBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _moreContentBtn;
}
@end
