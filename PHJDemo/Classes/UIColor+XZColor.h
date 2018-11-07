//
//  UIColor+XZColor.h
//  XZTenant
//
//  Created by niekaihua on 16/4/27.
//  Copyright © 2016年 xiaozhu.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XZColor)
/** 主题色(255,64,129;#ff4081) */
+ (UIColor *)xzRedColor;

/** 主题红色带透明度 */
+ (UIColor *)xzRedColorAlpha:(CGFloat)alpha;

/** 主题色选中(255,59,128;#ff2969) */
+ (UIColor *)xzRedColorSelect;

/** 辅助绿色(38,166,154;#26a69a) */
+ (UIColor *)xzAdditionalGreenColor;

/** 背景色(245,245,245;#f5f5f5) */
+ (UIColor *)xzBackgroundColor;
+ (UIColor *)xzBackgroundColorAlpha:(CGFloat)alpha;

/** 主文字颜色（标题、正文等）(33,33,33;#212121) */
+ (UIColor *)xzMainTextColor;

/** 主文字颜色 带透明度 */
+ (UIColor *)xzMainTextColorAlpha:(CGFloat)alpha;


/** 二级文字颜色（tabbar文字、控件可选等）(117,117,117;#757575) */
+ (UIColor *)xzSecondTextColor;

/** 三级文字颜色（placeHolder、控件不可选等）(189,189,189;#bdbdbd) */
+ (UIColor *)xzThirdTextColor;
+ (UIColor *)xzThirdTextColorAlpha:(CGFloat)alpha;


/** 置灰色(212,215,218;#d4d7da) */
+ (UIColor *)xzDisableColor;

/** 按钮、cell按下时的颜色(240,240,240;#f0f0f0) */
+ (UIColor *)xzHighlightedColor;

/** 浅灰色分割线(224,224,224;#e0e0e0) */
+ (UIColor *)xzSeparatorColorLightGray;
+ (UIColor *)xzSeparatorColorLightGrayAlpha:(CGFloat)alpha;

/** 浅红色分割线颜色(255,216,230;#ffd8e6)*/
+ (UIColor *)xzSeparatorColorLightRed;

/** 日历disableColor(227,227,227;#e3e3e3) */
+ (UIColor *)xzCalenderDisableColor;

/** 随机色 */
+ (UIColor *)xzRandomColor;

/** HEXcolor(十六进制色码,如#e3e3e3或d4d7da) */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
