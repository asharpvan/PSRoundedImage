//
//  PSRoundedImageView.m
//  PSRoundedImageView
//
//  Created by Pranav Sah on 14/04/15.
//  Copyright (c) 2015 Pranav Sah. All rights reserved.
//

#import "PSRoundedImageView.h"

@implementation PSRoundedImageView

+(instancetype) initWithFrame:(CGRect)frame andWithImageNamed:(NSString *)imageName andContentAspect:(PSRoundedImageContentModeScaleAspect)type {
    return [[PSRoundedImageView alloc] initWithFrame:frame andWithImageNamed:imageName andContentAspect:type];
}

-(instancetype) initWithFrame:(CGRect)frame andWithImageNamed:(NSString *)imageName andContentAspect:(PSRoundedImageContentModeScaleAspect) type{
    self = [super initWithFrame:frame];
    if (self) {
        [self setClipsToBounds:TRUE];
        [self setImage:[UIImage imageNamed:imageName]];
        [[self layer] setCornerRadius:self.bounds.size.width/2];
        if(type == PSRoundedImageContentModeScaleAspectFit)
            [self setContentMode:UIViewContentModeScaleAspectFit];
        else
            [self setContentMode:UIViewContentModeScaleAspectFill];
    }
    return self;
}


@end
