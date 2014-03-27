//
//  PlayerContainer.m
//  trial1_kickmotion rhk
//
//  Created by Jesse Lifshitz on 3/26/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "PlayerContainer.h"

//player functions for both players. calculating distance between both players

@implementation PlayerContainer

//need to create player1 and player2


//get distance between players in absolute value
-(int)getDistance{
    if (self.player1.location > self.player2.location){
        return (self.player1.location - self.player2.location);
    }
    else
        return (self.player2.location - self.player1.location);
}



@end
