//
//  PSRoundedImageView.h
//  PSRoundedImageView
//
//  Created by Pranav Sah on 14/04/15.
//  Copyright (c) 2015 Pranav Sah. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PSRoundedImageContentModeScaleAspect) {
    PSRoundedImageContentModeScaleAspectFit,
    PSRoundedImageContentModeScaleAspectFill
} ;

@interface PSRoundedImageView : UIImageView {
    PSRoundedImageView *imageView;
    
}

//Convenience Method
+(instancetype) initWithFrame:(CGRect)frame andWithImageNamed:(NSString *)imageName andContentAspect:(PSRoundedImageContentModeScaleAspect)type;


-(instancetype) initWithFrame:(CGRect)frame andWithImageNamed:(NSString *)imageName andContentAspect:(PSRoundedImageContentModeScaleAspect)type;

@end
