//
//  ImageViewViewController.m
//  PSRoundedImageView
//
//  Created by agatsa on 5/20/16.
//  Copyright © 2016 Pranav Sah. All rights reserved.
//

#import "ImageViewViewController.h"
#import "PSRoundedImageView.h"

@interface ImageViewViewController (){
    PSRoundedImageView *imageView;
    PSRoundedImageView *imageView1;
    PSRoundedImageView *imageView2;
}
@end

@implementation ImageViewViewController

-(id)init {
    self = [super init];
    if (self) {
        [self.view setBackgroundColor:[UIColor redColor]];
        [self setTitle:@"PSImageView Example"];
        imageView = [PSRoundedImageView initWithFrame:CGRectMake(0, 0, 100, 100)
                                    andWithImageNamed:@"logo6.jpg"
                                     andContentAspect:PSRoundedImageContentModeScaleAspectFit];
        [imageView setCenter:CGPointMake(self.view.center.x, 220)];
        
        imageView1 = [PSRoundedImageView initWithFrame:CGRectMake(0, 0, 100, 100)
                                     andWithImageNamed:@"Cottage-.jpg"
                                      andContentAspect:PSRoundedImageContentModeScaleAspectFill];
        [imageView1 setCenter:CGPointMake(self.view.center.x, 330)];
        
        imageView2 = [PSRoundedImageView initWithFrame:CGRectMake(0, 0, 100, 100)
                                     andWithImageNamed:@"test_image.jpg"
                                      andContentAspect:PSRoundedImageContentModeScaleAspectFill];
        [imageView2 setCenter:CGPointMake(self.view.center.x, 440)];
        
        [self.view addSubview:imageView];
        [self.view addSubview:imageView1];
        [self.view addSubview:imageView2];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
