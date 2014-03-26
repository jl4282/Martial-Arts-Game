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

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

-(void) viewDidLoad
{
    background.transform = CGAffineTransformMakeScale(-1, 1); //mirror the top image in order to make the character looks like RLB
    
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
            background.transform = CGAffineTransformMakeScale(-1, 1);
            
        }
        
        else // if RLB and kicking with left leg -> ap bal (front left rhk).
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"bprhk1.png"], [UIImage imageNamed:@"brhk.png"], [UIImage imageNamed:@"stand1.png"], nil];
            
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
            
            background.transform = CGAffineTransformMakeScale(1, 1);
            
        }
        
        else // if RLB & kick with left = ap bal rhk
        {
            
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"prhk.png"], [UIImage imageNamed:@"rhk.png"], [UIImage imageNamed:@"back.png"], nil];
            
            Player.image = [UIImage imageNamed:@"back.png"];
            
            
        }
    }
    
    // do animation
    [Player setAnimationRepeatCount:1];
    Player.animationDuration = 0.5;
    [Player startAnimating];

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
        
        background.transform = CGAffineTransformMakeScale(1, 1);
        
        }
        else
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"rl_akickp2.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akick.png"], [UIImage imageNamed:@"rl_akickp3.png"], [UIImage imageNamed:@"rl_akickre.png"], nil];
            
        }
        
        
        
    }
    
    else
    {
        
        if(Player1Position == LLB)
        {
            Player.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"ll_akickp1.png"], [UIImage imageNamed:@"ll_akickp2.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akick.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akickre.png"], nil];
            
            Player.image = [UIImage imageNamed:@"stand1.png"];
            
            Player1Position = false;
            
            background.transform = CGAffineTransformMakeScale(-1, 1);
            
            
        }
        else
        {
            Player.animationImages = [NSArray arrayWithObjects: [UIImage imageNamed:@"ll_akickp2.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akick.png"], [UIImage imageNamed:@"ll_akickp3.png"], [UIImage imageNamed:@"ll_akickre.png"], nil];
            
            
        }
        
        
    }
    
        
    [Player setAnimationRepeatCount:1];
    Player.animationDuration = 0.5;
    [Player startAnimating];
    
    
    
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

    
    background.transform = CGAffineTransformMakeScale(1, 1);
    
    
}


@end
