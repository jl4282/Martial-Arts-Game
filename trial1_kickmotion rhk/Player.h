//
//  Player.h
//  trial1_kickmotion rhk
//
//  Created by Jesse Lifshitz on 3/26/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property int health;
@property int location;
@property int stamina;
@property BOOL stance;

/*+(Player)createPlayer- create a new player. perhaps different health/stamina based on the difficulty level?
 */
@end
