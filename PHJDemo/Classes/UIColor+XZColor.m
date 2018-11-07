//
//  UIColor+XZColor.m
//  XZTenant
//
//  Created by niekaihua on 16/4/27.
//  Copyright © 2016年 xiaozhu.com. All rights reserved.
//

#import "UIColor+XZColor.h"

@implementation UIColor (XZColor)

+ (UIColor *)xzRedColor
{
    return [UIColor colorWithRed:(255)/255.0 green:(64)/255.0 blue:(129)/255.0 alpha:1.0];
}

+ (UIColor *)xzRedColorAlpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:(255)/255.0 green:(64)/255.0 blue:(129)/255.0 alpha:alpha];
}

+ (UIColor *)xzRedColorSelect{
    return [UIColor colorWithRed:(252)/255.0 green:(47)/255.0 blue:(107)/255.0 alpha:1.0];
}

+ (UIColor *)xzAdditionalGreenColor{
    return [UIColor colorWithRed:(38)/255.0 green:(166)/255.0 blue:(154)/255.0 alpha:1.0];
}

+ (UIColor *)xzBackgroundColor
{
    return [UIColor colorWithWhite:(245)/255.0 alpha:1.0];
}
+ (UIColor *)xzBackgroundColorAlpha:(CGFloat)alpha
{
    return [UIColor colorWithWhite:(245)/255.0 alpha:alpha];
}

+ (UIColor *)xzMainTextColor
{
    return [UIColor colorWithWhite:(33)/255.0 alpha:1.0];
}

+ (UIColor *)xzMainTextColorAlpha:(CGFloat)alpha
{
    return [UIColor colorWithWhite:(50)/255.0 alpha:alpha];
}

+ (UIColor *)xzSecondTextColor
{
    return [UIColor colorWithWhite:(117)/255.0 alpha:1.0];
}

+ (UIColor *)xzThirdTextColor
{
    return [UIColor colorWithWhite:(189)/255.0 alpha:1.0];
}

+ (UIColor *)xzThirdTextColorAlpha:(CGFloat)alpha
{
    return [UIColor colorWithWhite:(189)/255.0 alpha:alpha];
}

+ (UIColor *)xzDisableColor
{
    return [UIColor colorWithRed:(212)/255.0 green:(215)/255.0 blue:(218)/255.0 alpha:1.0];
}

+ (UIColor *)xzHighlightedColor
{
    return [UIColor colorWithWhite:(240)/255.0 alpha:1.0];
}

+ (UIColor *)xzSeparatorColorLightGray
{
    return [UIColor colorWithWhite:(224)/255.0 alpha:1.0];
}

+ (UIColor *)xzSeparatorColorLightGrayAlpha:(CGFloat)alpha
{
    return [UIColor colorWithWhite:(224)/255.0 alpha:alpha];
}

+ (UIColor *)xzSeparatorColorLightRed
{
    return [UIColor colorWithRed:(255)/255.0 green:(216)/255.0 blue:(230)/255.0 alpha:1.0];
}

+ (UIColor *)xzCalenderDisableColor
{
    return [UIColor colorWithWhite:(227)/255.0 alpha:1.0];
}

+ (UIColor *)xzRandomColor
{
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}


+ (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

+ (UIColor *) colorWithHexString: (NSString *) hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 1];
            green = [self colorComponentFrom: colorString start: 1 length: 1];
            blue  = [self colorComponentFrom: colorString start: 2 length: 1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            red   = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self colorComponentFrom: colorString start: 2 length: 1];
            blue  = [self colorComponentFrom: colorString start: 3 length: 1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 2];
            green = [self colorComponentFrom: colorString start: 2 length: 2];
            blue  = [self colorComponentFrom: colorString start: 4 length: 2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            red   = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self colorComponentFrom: colorString start: 4 length: 2];
            blue  = [self colorComponentFrom: colorString start: 6 length: 2];
            break;
        default:
            return nil;
    }
    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

@end
