//
//  ViewController.m
//  PSRoundedImageView
//
//  Created by Pranav Sah on 14/04/15.
//  Copyright (c) 2015 Pranav Sah. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
#import "ImageViewViewController.h"



@interface ViewController (){
   
}

@end

@implementation ViewController
-(id)init {
    self = [super init];
    if (self) {
        [self.view setBackgroundColor:[UIColor redColor]];
        [self setTitle:@"Battle Ground"];
       
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *normalVCButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [[normalVCButton titleLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    [[normalVCButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [normalVCButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[normalVCButton layer] setBorderWidth:5.0f];
    [[normalVCButton layer] setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [normalVCButton setTitle:@"PSImage Example" forState:UIControlStateNormal];
    [normalVCButton setTag:0];
    [normalVCButton addTarget:self action:@selector(loadScreen:) forControlEvents:UIControlEventTouchUpInside];
    [normalVCButton setCenter:CGPointMake(self.view.center.x, self.view.center.y - ((normalVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:normalVCButton];
    
    
    UIButton *tableVCButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [[tableVCButton titleLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    [[tableVCButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [tableVCButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[tableVCButton layer] setBorderWidth:5.0f];
    [[tableVCButton layer] setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [tableVCButton setTitle:@"PSImageView Example" forState:UIControlStateNormal];
    [tableVCButton setTag:1];
    [tableVCButton addTarget:self action:@selector(loadScreen:) forControlEvents:UIControlEventTouchUpInside];
    [tableVCButton setCenter:CGPointMake(self.view.center.x, self.view.center.y + ((tableVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:tableVCButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadScreen:(UIButton *)buttonPressed {
    
    UIViewController *vcToLoad = nil;
    
    if([buttonPressed tag] == 0) {
        vcToLoad = [[ImageViewController alloc]init];
    }else {
        vcToLoad = [[ImageViewViewController alloc]init];
    }
    
    [self.navigationController pushViewController:vcToLoad animated:TRUE];
    
}

@end
