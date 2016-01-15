//
//  CustomEdgeTextField.m
//  Field
//
//  Created by ding xiuwei on 16/1/15.
//  Copyright © 2016年 ding xiuwei. All rights reserved.
//

#import "CustomEdgeTextField.h"

@implementation CustomEdgeTextField

- (instancetype)init
{
    if (self = [super init])
    {
        [self defaultCapSet];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self defaultCapSet];
    }
    return self;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self defaultCapSet];
}
- (void)defaultCapSet
{
    _textInset = UIEdgeInsetsMake(0, 6, 0, 1);
    _leftViewInset =  UIEdgeInsetsMake(0, 8, 0, -8);

}
- (CGRect)setInterCapForText:(CGRect)r1
{
    return UIEdgeInsetsInsetRect(r1, _textInset);
}
- (CGRect)textRectForBounds:(CGRect)bounds
{
    CGRect r1 = [super textRectForBounds:bounds];
    return UIEdgeInsetsInsetRect(r1, _textInset);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    CGRect r1 = [super textRectForBounds:bounds];
    return UIEdgeInsetsInsetRect(r1, _textInset);
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect r1 = [super leftViewRectForBounds:bounds];
    return UIEdgeInsetsInsetRect(r1, _leftViewInset);
}
@end
