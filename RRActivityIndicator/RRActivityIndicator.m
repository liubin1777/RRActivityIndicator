//
//  RRActivityIndicator.m
//  TestIndicator
//
//  Created by stephenliu on 7/1/15.
//  Copyright (c) 2015 stephenliu. All rights reserved.
//

#import "RRActivityIndicator.h"
#import "PureLayout.h"

static NSString *const SPIN_ANIMATION = @"Spin";

@interface RRActivityIndicator()
{
    UIImageView *_indicatorImageView;
}
@end

@implementation RRActivityIndicator

- (instancetype)initWithActivityIndicatorWithImage:(UIImage *)indicatorImage{
    
    self = [super init];
    if (self) {
        _indicatorImageView = [[UIImageView alloc] initWithImage:indicatorImage];
        [_indicatorImageView setContentMode:UIViewContentModeCenter];
        [self addSubview:_indicatorImageView];
        [_indicatorImageView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
        
        _speed = 1.0f;
        _hidesWhenStopped = YES;
    }
    return self;
}

- (void)didMoveToSuperview{
    [super didMoveToSuperview];
    [self startAnimating];
}

- (void)startAnimating{
    [self rotateLayerInfinite:_indicatorImageView.layer];
    self.hidden = NO;
}

- (void)stopAnimating{
    [_indicatorImageView.layer removeAllAnimations];
    
    if (_hidesWhenStopped) {
        self.hidden = YES;
    }else{
        self.hidden = NO;
    }
}

- (BOOL)isAnimating{
    if ([_indicatorImageView.layer animationForKey:SPIN_ANIMATION] == nil) {
        return NO;
    }
    return YES;
}

- (void)rotateLayerInfinite:(CALayer *)layer
{
    if ([self isAnimating]) {
        return;
    }
    
    CABasicAnimation *rotation;
    rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.fromValue = [NSNumber numberWithFloat:0];
    rotation.toValue = [NSNumber numberWithFloat:(2 * M_PI)];
    rotation.duration = _speed; // Speed
    rotation.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
    [layer removeAllAnimations];
    [layer addAnimation:rotation forKey:SPIN_ANIMATION];
}

@end
