//
//  ViewController.m
//  ShareExtension
//
//  Created by Jaffer Sheriff U on 5/13/15.
//  Copyright (c) 2015 Jaffer Sheriff U. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender
{
    NSString *text = @"Sample text";
   
    UIActivityViewController *controller =
    [[UIActivityViewController alloc]
     initWithActivityItems:@[text ]
     applicationActivities:nil];
    
    [self presentViewController:controller animated:YES completion:nil];
}

+ (UIImage *) imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0f);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    UIImage * snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}

@end
