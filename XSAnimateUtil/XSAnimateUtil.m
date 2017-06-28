//
//  AnimateUtil.m
//  MyAnimationDemo
//
//  Created by suxx on 17/5/26.
//  Copyright © 2017年 suxx. All rights reserved.
//

#import "XSAnimateUtil.h"

@implementation XSAnimateUtil

#pragma mark - Delegate

#pragma mark - Event Handle

#pragma mark - Private Method

#pragma mark - Public Method

+(void)addBreatheAnimationToView:(UIView *)view{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue = [NSNumber numberWithInteger:1];
    animation.toValue = [NSNumber numberWithInteger:0];
    animation.autoreverses = YES;
    animation.duration = 1.0f;
    animation.repeatCount = MAXFLOAT;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [view.layer addAnimation:animation forKey:@"aAlpha"];
}

+(void)addHeadJumpAnimationToView:(UIView *)view{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue = [NSNumber numberWithInteger:1];
    animation.toValue = [NSNumber numberWithInteger:0];
    animation.duration = 1.0f;
    animation.autoreverses = YES;
    animation.repeatCount = MAXFLOAT;
    
    [view.layer addAnimation:animation forKey:@"headJumpAnimation"];
}

+(void)addScaleAnimationToView:(UIView *)view from:(float)from to:(float)to{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue = [NSNumber numberWithInteger:from];
    animation.toValue = [NSNumber numberWithInteger:to];
    animation.duration = 1.0f;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    //动画结束后不返回原状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"ScaleAnimation"];
}

+(void)moveView:(UIView *)view From:(CGPoint)fPoint to:(CGPoint)dPoint{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue = [NSValue valueWithCGPoint:fPoint];
    animation.toValue = [NSValue valueWithCGPoint:dPoint];
    animation.duration = 1.0f;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    //动画结束后不返回原状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"positionAnimation"];
}

+(void)rateView:(UIView *)view withType:(TRatate)type{
    NSString *rotateType = @"";
    if (type == X_RATATE) {
        rotateType = @"transform.rotation.x";
    }else if (type == Y_RATATE){
        rotateType = @"transform.rotation.y";
    }else if (type == Z_RATATE){
        rotateType = @"transform.rotation.z";
    }
    
    if ([rotateType isEqualToString:@""]) {
        return;
    }
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:rotateType];
    animation.toValue = [NSNumber numberWithFloat:M_PI*2];
    animation.duration = 1.0f;
    
    [view.layer addAnimation:animation forKey:@"rotateAnimation"];
}

+(void)changeView:(UIView *)view withBackgroundColor:(UIColor *)color{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    animation.toValue = (id)color.CGColor;
    animation.duration = 2.0f;
    
    //不返回原来的状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"backgroundColorAnimation"];
    
}

+(void)changeView:(UIView *)view withImage:(UIImage *)image{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"contents"];
    animation.toValue = (id)image.CGImage;
    animation.duration = 2.0f;
    
    //不返回原来的状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"contentsAnimation"];
}

+(void)changeView:(UIView *)view withFrame:(CGRect)rect{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    animation.toValue = [NSValue valueWithCGRect:rect];
    animation.duration = 2.0f;
    
    //不返回原来的状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"boundsAnimation"];
}

+(void)changeView:(UIView *)view withCorner:(float)corner{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    animation.toValue = [NSNumber numberWithFloat:corner];
    animation.duration = 1.0;
    
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"cornerRadiusAnimation"];
}

+(void)changeFromSquareToCircle:(UIView *)view{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    animation.toValue = [NSNumber numberWithFloat:view.frame.size.width/2.0];
    animation.duration = 1.0;
    
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"cornerRadiusAnimation"];
}

+(void)addBorderWidthAnimationToView:(UIView *)view{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
    animation.fromValue = [NSNumber numberWithFloat:0];
    animation.toValue = [NSNumber numberWithFloat:view.frame.size.width/2];
    animation.duration = .5f;
    
    [view.layer addAnimation:animation forKey:@"borderWidthAniamtion"];
}

+(void)changeView:(UIView *)view withShadowColor:(UIColor *)color{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
    animation.toValue = (id)color.CGColor;
    animation.duration = 1.0f;
    
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    [view.layer addAnimation:animation forKey:@"shadowColorAniamtion"];
}

+(void)shakeView:(UIView *)view{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    NSValue *value1 = [NSNumber numberWithFloat:M_PI*10/180];
    NSValue *value2 = [NSNumber numberWithFloat:-M_PI*10/180];
    NSValue *value3 = [NSNumber numberWithFloat:M_PI*10/180];
    
    animation.values = @[value1, value2, value3];
    animation.autoreverses = YES;
    animation.duration = .5f;
    animation.repeatCount = MAXFLOAT;
    
    [view.layer addAnimation:animation forKey:@"shakeAnimation"];
}

+(void)addStarToView:(UIView *)view{
    CABasicAnimation *animation1 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation1.fromValue = [NSNumber numberWithInteger:1];
    animation1.toValue = [NSNumber numberWithInteger:.5];
    
    CABasicAnimation *animation2 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation2.fromValue = [NSNumber numberWithInteger:1.0];
    animation2.toValue = [NSNumber numberWithInteger:1.5];
    
    CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
    groupAnimation.animations = @[animation1, animation2];
    groupAnimation.duration = 1.0f;
    groupAnimation.repeatCount = MAXFLOAT;
    groupAnimation.autoreverses = YES;
    [view.layer addAnimation:groupAnimation forKey:@"groupAnimation"];
}

+(void)JumpView:(UIView *)view From:(CGPoint)fPoint to:(CGPoint)dPoint{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue = [NSValue valueWithCGPoint:fPoint];
    animation.toValue = [NSValue valueWithCGPoint:dPoint];
    animation.duration = .5f;
    
    animation.repeatCount = MAXFLOAT;
    animation.autoreverses = YES;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    [view.layer addAnimation:animation forKey:@"jumpAnimation"];
}

+(NSTimer *)addHydrosphereAnimationToView:(UIView *)view scale:(float)scale backgrounImage:(UIImage *)bImage{
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        UIImageView *subView = [[UIImageView alloc] initWithFrame:view.bounds];
        subView.image = bImage;
        [view insertSubview:subView atIndex:0];
        
        CABasicAnimation *animation1 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        animation1.fromValue = [NSNumber numberWithInteger:1];
        animation1.toValue = [NSNumber numberWithInteger:0];
        
        CABasicAnimation *animation2 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        animation2.fromValue = [NSNumber numberWithFloat:1.0];
        animation2.toValue = [NSNumber numberWithFloat:1.8];//[NSNumber numberWithInteger:1.5];
        
        //        CABasicAnimation *animation3 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
        //        animation3.fromValue = (id)[UIColor whiteColor].CGColor;
        //        animation3.toValue = (id)[UIColor clearColor].CGColor;
        
        CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
        groupAnimation.animations = @[animation1, animation2];
        groupAnimation.duration = 3.0f;
        groupAnimation.removedOnCompletion = YES;
        groupAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        
        [subView.layer addAnimation:groupAnimation forKey:@"hydrosphereAnimation"];
    }];
    
    return timer;
    
}


#pragma mark - Getter 和 Setter

@end
