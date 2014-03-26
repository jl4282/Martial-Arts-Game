//
//  sparring.h
//  trial1_kickmotion rhk
//
//  Created by Kwang-Jae Chang on 3/23/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface sparring : UIViewController
{
    IBOutlet UIImageView* background;
    IBOutlet UIImageView* Player;
    
}

-(IBAction)SwipeUp:(UIGestureRecognizer *) sender;
-(IBAction)SwipeDown:(UIGestureRecognizer *) sender;
-(IBAction)rotation:(UIGestureRecognizer *)sender;


@end
