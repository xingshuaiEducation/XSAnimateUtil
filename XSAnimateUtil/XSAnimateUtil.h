//
//  AnimateUtil.h
//  MyAnimationDemo
//
//  Created by suxx on 17/5/26.
//  Copyright © 2017年 suxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    X_RATATE,
    Y_RATATE,
    Z_RATATE
}TRatate;


@interface XSAnimateUtil : NSObject

/*********************基础动画 CABasicAnimation**********************/

/**
 增加呼吸灯的动画

 @param view 增加动画的对象
 */
+(void)addBreatheAnimationToView:(UIView *)view;

/**
 增加心跳的动画

 @param view 增加动画的对象
 */
+(void)addHeadJumpAnimationToView:(UIView *)view;

/**
 增加变换大小的效果

 @param view 视图
 @param from 初始倍数
 @param to 最终倍数
 */
+(void)addScaleAnimationToView:(UIView *)view from:(float)from to:(float)to;

/**
 view从fPoint移动到dPoint

 @param view 移动的对象 
 @param fPoint 移动的起始位置
 @param dPoint 移动的终点位置
 */
+(void)moveView:(UIView *)view From:(CGPoint)fPoint to:(CGPoint)dPoint;


/**
 将view进行type类型的旋转
 @param view 旋转对象
 @param type 旋转类型
 */
+(void)rateView:(UIView *)view withType:(TRatate)type;

/**
 变换背景色

 @param view 变换对象
 @param color 替换的最终背景色
 */
+(void)changeView:(UIView *)view withBackgroundColor:(UIColor *)color;

/**
 改变view的corner

 @param view 对象
 @param corner corner值
 */
+(void)changeView:(UIView *)view withCorner:(float)corner;

/**
 将控件由方形变成圆形

 @param view 控件
 */
+(void)changeFromSquareToCircle:(UIView *)view;

/**
    改变控件边框

 @param view 控件
 */
+(void)addBorderWidthAnimationToView:(UIView *)view;

/**
 改变控件的阴影颜色,view控件要先设置一下属性
 view.layer.shadowColor = [UIColor lightGrayColor].CGColor;
 view.layer.shadowOffset = CGSizeMake(7, 7);
 view.layer.shadowOpacity = 0.70;

 @param view 控件
 @param color 颜色
 */
+(void)changeView:(UIView *)view withShadowColor:(UIColor *)color;


/**
    改变控件的背景图片

 @param view 控件
 @param image 背景图片
 */
+(void)changeView:(UIView *)view withImage:(UIImage *)image;

/**
    改变控件的frame

 @param view 控件
 @param rect frame
 */
+(void)changeView:(UIView *)view withFrame:(CGRect)rect;


/*****************关键帧动画 CAKeyframeAnimation********************/
/**
 抖动view
 
 @param view 抖动的view
 */
+(void)shakeView:(UIView *)view;

/**************组合动画 CAAnimationGroup**************/
/**
 增加星星闪烁效果

 @param view 控件
 */
+(void)addStarToView:(UIView *)view;

/**
 控件跳动动画,像大图大头针定位时的效果

 @param view 控件
 @param fPoint 起始点
 @param dPoint 终点
 */
+(void)JumpView:(UIView *)view From:(CGPoint)fPoint to:(CGPoint)dPoint;

/**
 水波纹的动画

 @param view 加动画的视图
 @param scale 最后的缩放倍数
 @param bImage 背景图片
 @return 定时器，离开要手动清除
 */
+(NSTimer *)addHydrosphereAnimationToView:(UIView *)view scale:(float)scale backgrounImage:(UIImage *)bImage;



@end
