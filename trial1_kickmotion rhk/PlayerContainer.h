//
//  PlayerContainer.h
//  trial1_kickmotion rhk
//
//  Created by Jesse Lifshitz on 3/26/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"


@interface PlayerContainer : NSObject
@property Player* player1;
@property Player* player2;
-(int)getDistance;

//array or dictionary to keep track of base attacks?
@end
