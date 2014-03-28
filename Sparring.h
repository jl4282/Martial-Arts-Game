//
//  sparring.h
//  trial1_kickmotion rhk
//
//  Created by Kwang-Jae Chang on 3/23/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerContainer.h"

//have images in player, and player will be created in playercontainer, so this will have an instance of player container that will house the different sprites...?

@interface sparring : UIViewController
{
    IBOutlet UIImageView* background;
    IBOutlet UIImageView* player;
}
@property PlayerContainer* players;

-(IBAction)SwipeUp:(UIGestureRecognizer *) sender;
-(IBAction)SwipeDown:(UIGestureRecognizer *) sender;
-(IBAction)rotation:(UIGestureRecognizer *)sender;

-(IBAction)MoveRight:(UIGestureRecognizer*) sender;
-(IBAction)MoveLeft: (UIGestureRecognizer*)sender;


@end
