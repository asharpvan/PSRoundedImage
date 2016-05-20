//
//  PSImage.h
//  PSRoundedImageView
//
//  Created by Pranav Sah on 15/04/15.
//  Copyright (c) 2015 Pranav Sah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSImage : UIImage

+(instancetype) initWithImageNamed:(NSString *)imageName;

-(instancetype) initWithImageNamed:(NSString *)imageName;
-(PSImage *) initRoundedImage:(NSString *)imageName;

@end
