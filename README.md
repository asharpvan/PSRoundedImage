# PSRoundedImage


----------

**Description**

This project was developed when the need arose to show the Rounded Avatars to shown in User Profiles. Now there are two ways of doing it. We can either work on ImageView Instance and show it to be rounded. Or simply work on the Image that is being displayed and make it round.

This project will show both using examples. 


----------
## PSImage ##

This is a very intelligent subclass of `UIImage`, creates a round image after making some calculations based on image's height and width. This works well for **portrait**, **landscape** as well as **square** images. 

**Import .h file**

`#import "PSImage.h"`

**To create a PSImage**

PSImage *squareImage = [PSImage initWithImageNamed:@"logo6.jpg"];

**To Assign PSImage to UIImageView**

testImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
[testImageView setImage:squareImage];


----------
## PSImageView ##

A subclass of UIImageView. Takes the load of making rounded image view on itself. Currently this support 2 content modes : **UIViewContentModeScaleAspectFit** and **UIViewContentModeScaleAspectFill**, Obviously referred to as **PSRoundedImageContentModeScaleAspectFit** and **PSRoundedImageContentModeScaleAspectFill** respectively.

**Import .h file**

`#import "PSRoundedImageView.h"`

**To create a PSImageView**

PSRoundedImageView *imageView = [PSRoundedImageView initWithFrame:CGRectMake(0, 0, 100, 100)
andWithImageNamed:@"logo6.jpg"
andContentAspect:PSRoundedImageContentModeScaleAspectFit];
[self.view addSubview:imageView];


----------


----------

## Convenience ##

As you can see to aid the creation of rounded image view as well as rounded image, **Class (+) Methods** have been created for both subclasses.  