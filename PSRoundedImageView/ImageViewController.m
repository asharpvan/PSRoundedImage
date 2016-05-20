//
//  ImageViewController.m
//  PSRoundedImageView
//
//  Created by agatsa on 5/20/16.
//  Copyright © 2016 Pranav Sah. All rights reserved.
//

#import "ImageViewController.h"
#import "PSImage.h"

@interface ImageViewController (){
    
    UIImageView *testImageView;
    UIImageView *testImageView1;
    UIImageView *testImageView2;

}

@end

@implementation ImageViewController
-(id)init {
    self = [super init];
    if (self) {
        [self.view setBackgroundColor:[UIColor redColor]];
        
        [self setTitle:@"PSImage Example"];

        PSImage *squareImage = [PSImage initWithImageNamed:@"logo6.jpg"];
        
        PSImage *portrait = [PSImage initWithImageNamed:@"Cottage-.jpg"];
        
        PSImage *landscape = [PSImage initWithImageNamed:@"test_image.jpg"];
        
        
        testImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [testImageView setCenter:CGPointMake(self.view.center.x, 220)];
        [testImageView setImage:squareImage];
        
        
        testImageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [testImageView1 setCenter:CGPointMake(self.view.center.x, 330)];
        [testImageView1 setImage:portrait];
        
        
        testImageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [testImageView2 setCenter:CGPointMake(self.view.center.x, 440)];
        [testImageView2 setImage:landscape];
        

        [self.view addSubview:testImageView];
        [self.view addSubview:testImageView1];
        [self.view addSubview:testImageView2];
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
