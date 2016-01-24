//
//  AddBtn.m
//  encrypto
//
//  Created by master on 2016/1/24.
//  Copyright © 2016年 master. All rights reserved.
//

#import "AddBtn.h"
@import QuartzCore;
@implementation AddBtn

- (void)updateTrackingAreas {
    NSTrackingArea *trackArea = self.trackingAreas[0];
    [self removeTrackingArea:trackArea];
    
    trackArea = [[NSTrackingArea alloc] initWithRect:self.bounds options:NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways owner:self userInfo:nil];
    [self addTrackingArea:trackArea];
}

- (void)mouseEntered:(NSEvent *)theEvent{
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        context.duration = 0.08;
        context.timingFunction = [CAMediaTimingFunction functionWithName:@"easeIn"];
        self.animator.frame = NSMakeRect(0, 400/3., 300, 400/3.);
    } completionHandler:^{}];
    

//    float radiansToRotate = 45/180.;
//    CATransform3D zRotation;
//    zRotation = CATransform3DMakeRotation(radiansToRotate, 0, 0, 1.0);
//    CABasicAnimation *animateZRotation;
//    animateZRotation = [CABasicAnimation animationWithKeyPath:@"transform"];
//    animateZRotation.toValue = [NSValue valueWithCATransform3D:zRotation];
//    animateZRotation.duration = 0.2;
//    [self.layer.sublayers[1] addAnimation:animateZRotation forKey:@"transform"];
    CATransform3D transform3D =CATransform3DMakeRotation(0 / 180.0 * M_PI, 0.0, 0.0, 1.0);
    
    transform3D = CATransform3DTranslate (transform3D, 0,
                                          -20, 0);
    self.layer.sublayers[1].transform = transform3D;

//    radiansToRotate = -45/180.;
//    zRotation = CATransform3DMakeRotation(radiansToRotate, 0, 0, 1.0);
//    animateZRotation = [CABasicAnimation animationWithKeyPath:@"transform"];
//    animateZRotation.toValue = [NSValue valueWithCATransform3D:zRotation];
//    animateZRotation.duration = 0.2;
//    [self.layer.sublayers[2] addAnimation:animateZRotation forKey:@"transform"];
    self.layer.sublayers[2].transform = transform3D;
    
    self.bounds = NSMakeRect(0, -17, 300, 400/3.);
}

- (void)mouseExited:(NSEvent *)theEvent{
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        context.duration = 0.08;
        context.timingFunction = [CAMediaTimingFunction functionWithName:@"easeIn"];

        self.animator.frame = NSMakeRect(0, 150, 300, 100);
    } completionHandler:^{}];
    
//    float radiansToRotate = 45/180.;
//    CATransform3D zRotation;
//    zRotation = CATransform3DMakeRotation(radiansToRotate, 0, 0, 1.0);
//    CABasicAnimation *animateZRotation;
//    animateZRotation = [CABasicAnimation animationWithKeyPath:@"transform"];
//    animateZRotation.toValue = [NSValue valueWithCATransform3D:zRotation];
//    animateZRotation.duration = 0.2;
//    [self.layer.sublayers[1] addAnimation:animateZRotation forKey:@"transform"];
//    self.layer.sublayers[1].transform = CATransform3DMakeRotation(0 / 180.0 * M_PI, 0.0, 0.0, 1.0);
    
    self.layer.sublayers[1].transform = CATransform3DMakeRotation(45 / 180.0 * M_PI, 0.0, 0.0, 1.0);
    self.layer.sublayers[2].transform = CATransform3DMakeRotation(135 / 180.0 * M_PI, 0.0, 0.0, 1.0);
    
    
    self.bounds = NSMakeRect(0, 0, 300, 100);
}

@end
