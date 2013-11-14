//
//  ViewController.m
//  FlipView
//
//  ----------------- www.appledev.com.br --------------------
//
//
//  Created by Alex Rodrigues on 11/14/13.
//  Copyright (c) 2013 Alex Rodrigues. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//animation who makes our iphone flip
- (IBAction)flip
{
    // defining how much time the animation will take
    double time = 1.0;
    // begin animation
    [UIView beginAnimations:nil context:nil];
    // set the time and GO!
    [UIView setAnimationDuration:time];
    [UIView setAnimationBeginsFromCurrentState:NO];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:imgV cache:YES];
    [UIView commitAnimations];

}

//animation who makes our iphone appear and disappear
- (IBAction)disappearAndAppear
{
    [UIView animateWithDuration:1.0 animations:^{
        [imgV setAlpha:0.0];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 animations:^{
            [imgV setAlpha:1.0];
        }];
    }];
}

//animation who makes our iphone flip and rise
- (IBAction)flipAndRise
{
    // defining how much time the animation will take
    double time = 1.0;
    // begin animation
    [UIView beginAnimations:nil context:nil];
    // set the time and GO!
    [UIView setAnimationDuration:time];
    [UIView setAnimationBeginsFromCurrentState:NO];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:imgV cache:YES];
    [UIView commitAnimations];
    // setting the time to rise the iphone when the flip done
    timer = [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(riseNow) userInfo:nil repeats:NO];
}

//animation who makes our iphone rise
- (void)riseNow
{
    // setting how much the imgv will grow
    int newWidth = imgV.frame.size.width + 10;
    int newHeight =imgV.frame.size.height + 10;
    // doing the animation
    [UIView animateWithDuration:1.0 animations:^{
        [imgV setFrame:CGRectMake(imgV.frame.origin.x, imgV.frame.origin.y, newWidth, newHeight)];
    }];
}

@end
