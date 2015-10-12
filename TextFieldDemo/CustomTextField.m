//
//  CustomTextField.m
//  TextFieldDemo
//
//  Created by ShiMac on 15/10/11.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "CustomTextField.h"
@interface CustomTextField ()
{
    CGSize customSize;
}
@end


@implementation CustomTextField

-(id)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        
        self.customLabel=[[UILabel alloc] init];
        self.customLabel.font=self.font;
        self.customLabel.alpha=1;
        self.customLabel.textColor=[UIColor grayColor];
        [self addSubview:self.customLabel];
    }
    return self;
}

-(void)setPlaceholder:(NSString *)placeholder
{
    self.customLabel.text=placeholder;
    self.customLabel.font=self.font;
    customSize=[self.customLabel sizeThatFits:self.bounds.size];
    self.customLabel.frame=CGRectMake(0, customSize.height, customSize.width, customSize.height);
    [self setNeedsLayout];
}

//需要空留一定的空间
-(CGRect)editingRectForBounds:(CGRect)bounds
{
    CGRect rect=[super editingRectForBounds:bounds];
    rect=CGRectMake(rect.origin.x, rect.origin.y+customSize.height*0.5, rect.size.width, rect.size.height);
    return rect;
}

-(CGRect)textRectForBounds:(CGRect)bounds
{
    CGRect rect=[super textRectForBounds:bounds];
    rect=CGRectMake(rect.origin.x, rect.origin.y+customSize.height*0.5, rect.size.width, rect.size.height);
    return rect;
}

-(void)layoutSubviews
{
    [super layoutSubviews];

    if (self.text.length>0) {
        
        [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:1 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.customLabel.transform=CGAffineTransformMakeScale(0.7, 0.7);
            self.customLabel.frame=CGRectMake(0, 5, self.customLabel.frame.size.width, self.customLabel.frame.size.height);
        } completion:nil];
    }
    else{
        [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:1 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            
            self.customLabel.transform=CGAffineTransformMakeScale(1, 1);
            self.customLabel.frame=CGRectMake(0, self.customLabel.frame.size.height, self.customLabel.frame.size.width, self.customLabel.frame.size.height);
        } completion:nil];
    }
    
}


@end
