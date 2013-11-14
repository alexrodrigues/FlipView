//
//  ViewController.h
//  FlipView
//
//  ----------------- www.appledev.com.br --------------------
//
//
//  Created by Alex Rodrigues on 11/14/13.
//  Copyright (c) 2013 Alex Rodrigues. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // reference the image of iphone on storyboard
    IBOutlet UIImageView *imgV;
    // timer who will call the animation to rise after 1.0 second
    NSTimer* timer;
}

//animation who makes our iphone flip
- (IBAction)flip;

//animation who makes our iphone appear and disappear
- (IBAction)disappearAndAppear;

//animation who makes our iphone flip and rise
- (IBAction)flipAndRise;

//animation who makes our iphone rise
- (void)riseNow;

@end
