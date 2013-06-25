//
//  ViewController.h
//  Rock Paper Scissors
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Omar Zakaria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView* background_img;
    IBOutlet UIButton* rockButton;
    IBOutlet UIButton* paperButton;
    IBOutlet UIButton* scissorsButton;
    int playerMove;
    int aiMove;
    int winner;
}
@property (strong, nonatomic) UIImage* img;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;
@property (weak, nonatomic) IBOutlet UILabel *aiChoiceLabel;

-(IBAction)getPlayerChoice:(id)sender;
-(void)getAImove;
-(void)playRPS; 
@end
