//
//  PSImage.m
//  PSRoundedImageView
//
//  Created by Pranav Sah on 15/04/15.
//  Copyright (c) 2015 Pranav Sah. All rights reserved.
//

#import "PSImage.h"
#import <QuartzCore/QuartzCore.h>



@implementation PSImage


+(instancetype)initWithImageNamed:(NSString *)imageName {
    return [[PSImage alloc]initWithImageNamed:imageName];
}

-(instancetype)initWithImageNamed:(NSString *)imageName {
    self = [self initRoundedImage:imageName];
    if (self) {
    }
    return self;
}

-(PSImage *) initRoundedImage: (NSString *)imageName {
    self = [super initWithCGImage:[UIImage imageNamed:imageName].CGImage];
    if (self) {
        
//        NSLog(@"width : %f height : %f",self.size.width,self.size.height);
        CGAffineTransform scaleTransform;
        CGPoint origin;
        CGFloat scaleRatio;
        CGFloat newSize;
        
        if (self.size.width > self.size.height) {
            NSLog(@"Landscape");
            newSize = self.size.height;
            scaleRatio = newSize / self.size.height;
            scaleTransform = CGAffineTransformMakeScale(scaleRatio, scaleRatio);
            origin = CGPointMake(((self.size.height - self.size.width - newSize/2)/2)/ 2.0f, 0);
        }
        else if (self.size.width < self.size.height){
            NSLog(@"Portrait");
            newSize = self.size.width;
            scaleRatio = newSize / self.size.width;
            scaleTransform = CGAffineTransformMakeScale(scaleRatio, scaleRatio);
            origin = CGPointMake(0,((self.size.width - self.size.height - newSize/2)/2)/ 2.0f);
        }
        else {
        
            NSLog(@"Square");
            newSize = self.size.height;
            scaleRatio = newSize / self.size.width;
            scaleTransform = CGAffineTransformMakeScale(scaleRatio, scaleRatio);
            origin = CGPointMake(0, -(self.size.height - self.size.width) / 2.0f);
        
        }
        
        CGSize size = CGSizeMake(newSize, newSize);
        if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
            UIGraphicsBeginImageContextWithOptions(size, NO, 0);
        } else {
            UIGraphicsBeginImageContext(size);
            
        }
        //Calculate the centre of the circle
        CGFloat imageCentreX = newSize/2;
        CGFloat imageCentreY = newSize/2;
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextConcatCTM(context, scaleTransform);

        CGFloat radius = newSize/2;
        CGContextBeginPath (context);
        
        CGContextAddArc (context, imageCentreX, imageCentreY, radius, 0, 2*M_PI, 0);
        CGContextClosePath (context);
        CGContextClip (context);

        [self drawAtPoint:origin];
        
        UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
        self = (PSImage *)newImage;

        UIGraphicsEndImageContext();
    }
    return self;
}

@end