//
//  sparring.m
//  trial1_kickmotion rhk
//
//  Created by Kwang-Jae Chang on 3/23/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "sparring.h"



@interface sparring()

@end

@implementation sparring

const int RLB = 0; // the position is a boolean value, as right leg back being false
const int LLB = 1; // left leg back = position == true

BOOL Player1Position = RLB;
BOOL initial_position = true;

int movement = 33;


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

-(void) viewDidLoad
{
    
    [super viewDidLoad];
}

-(void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)SwipeUp:(UIGestureRecognizer *)sender // swipe up is a round house kick
{
    CGPoint point = [sender locationInView: self.view];
    
    if(point.x < 160) // swipe left side
    {
        if(Player1Position == LLB) // if LLB and kicking with left leg -> full round house kick
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"bprhk1.png"], [UIImage imageNamed:@"brhk.png"], [UIImage imageNamed:@"stand1.png"], nil];
            
            // all three below is to deal with changing legs i.e. LLB -> RLB
            Player.image = [UIImage imageNamed:@"stand1.png"];
            Player1Position = false;
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_llrhkhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
            
        }
        
        else // if RLB and kicking with left leg -> ap bal (front left rhk).
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"bprhk1.png"], [UIImage imageNamed:@"brhk.png"], [UIImage imageNamed:@"stand1.png"], nil];
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_llrhkhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
        }
        
        
    }
    
    else // swipe right side
    {
        if(Player1Position == RLB) // if LLB & kick with left = full rhk
        {
            
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"prhk1.png"], [UIImage imageNamed:@"prhk.png"], [UIImage imageNamed:@"rhk.png"], [UIImage imageNamed:@"back.png"], nil];
            
            // change player's posture
            Player.image = [UIImage imageNamed:@"back.png"];
            Player1Position = true;

            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_rlrhkhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
        }
        
        else // if RLB & kick with left = ap bal rhk
        {
            
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"prhk.png"], [UIImage imageNamed:@"rhk.png"], [UIImage imageNamed:@"back.png"], nil];
            
            Player.image = [UIImage imageNamed:@"back.png"];
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_rlrhkhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
        }
    }
    
    // do animation
    [Player setAnimationRepeatCount:1];
    Player.animationDuration = 0.5;
    [Player startAnimating];
    
    if(!initial_position)
    {
        
        [background setAnimationRepeatCount:1];
        background.animationDuration = 1;
        [background startAnimating];
    }
    
    

}



- (IBAction)SwipeDown:(UIGestureRecognizer *)sender // swipe down is a axe kick
{
    CGPoint point = [sender locationInView: self.view];
    
    if(point.x > 160)
    {
        if(Player1Position == RLB){
            
        
        Player.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"rl_akickp1.png"], [UIImage imageNamed:@"rl_akickp2.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akick.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akickre.png"], nil];
    
        Player.image = [UIImage imageNamed:@"back.png"];
        Player1Position = true;
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_rlakhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
            
        }
        else
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"rl_akickp2.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akick.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akickre.png"], nil];
          
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_rlakhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
        }
        
        
        
    }
    
    else
    {
        
        if(Player1Position == LLB)
        {
            Player.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"ll_akickp1.png"], [UIImage imageNamed:@"ll_akickp2.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akick.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akickre.png"], nil];
            
            Player.image = [UIImage imageNamed:@"stand1.png"];
            
            Player1Position = false;
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_llakhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
                
            }
            
            
        }
        else
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"ll_akickp2.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akick.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akickre.png"], nil];
            
            if(!initial_position)
            {
                background.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed: @"scarecrow_top_stance.png"], [UIImage imageNamed:@"scarecrow_llakhit.png"], [UIImage imageNamed:@"scarecrow_top_stance.png"], nil ];
            }
        }
        
        
    }
    
        
    [Player setAnimationRepeatCount:1];
    Player.animationDuration = 0.5;
    [Player startAnimating];
    
    if(!initial_position)
       {
           
           [background setAnimationRepeatCount:1];
           background.animationDuration = 1.2;
           [background startAnimating];
       }
    

    
    
}

-(IBAction)rotation:(UIGestureRecognizer *)sender
{
    //if(Player1Position == false)
    //{
        if(sender.state == UIGestureRecognizerStateBegan)
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"rl_bkickp1.png"], [UIImage imageNamed:@"rl_bkickp2.png"], [UIImage imageNamed:@"rl_bkickp3.png"], [UIImage imageNamed:@"rl_bkick.png"], [UIImage imageNamed:@"rl_bkickre.png"], [UIImage imageNamed:@"back.png"], nil];
            

            Player1Position = true;
            
            Player.image = [UIImage imageNamed:@"back.png"];

            [Player setAnimationRepeatCount:1];
            Player.animationDuration = 0.5;
            [Player startAnimating];
            
    
        }

    
    
    
}

-(IBAction)MoveRight:(UIGestureRecognizer *)sender
{
    
    if(initial_position)
    {
        Player.center = CGPointMake(Player.center.x + movement, Player.center.y);
        background.image = [UIImage imageNamed:@"Scarecrow_top_stance"];
        initial_position = false;
        
    }
    
}

-(IBAction)MoveLeft:(UIGestureRecognizer *)sender
{
    if(!initial_position)
    {
        Player.center = CGPointMake(Player.center.x - movement, Player.center.y);
        background.image = [UIImage imageNamed:@"Scarecrow_whole_stance"];
        initial_position = true;
        
    }
    
}




@end
