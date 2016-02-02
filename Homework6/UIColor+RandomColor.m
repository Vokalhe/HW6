//
//  UIColor+RandomColor.m
//  Homework6
//
//  Created by Admin on 03.02.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor_RandomColor
+(UIColor*)newRandomColor{
    int green = arc4random_uniform(255);
    int red = arc4random_uniform(255);
    int blue = arc4random_uniform(255);
    
    UIColor_RandomColor* newColor = [[UIColor_RandomColor alloc]initWithRed:red/255.f green:green/255.f blue:blue/255.f alpha:1];
    
    return newColor;
}
@end
