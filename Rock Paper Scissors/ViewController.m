//
//  ViewController.m
//  Rock Paper Scissors
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Omar Zakaria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [background_img setImage: [UIImage imageNamed: @"background1.jpg"] ];
    [rockButton.imageView setImage: [UIImage imageNamed: @"rock.jpg"]];
    [paperButton.imageView setImage: [UIImage imageNamed: @"paper.png"] ];
    [scissorsButton.imageView setImage: [UIImage imageNamed: @"scissors.png"]];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getAImove{
    aiMove = arc4random()%3;
    
    if(aiMove == 0){
        self.aiChoiceLabel.text = @"The computer's choice was rock.";
    }
    if(aiMove == 1){
        self.aiChoiceLabel.text = @"The computer's choice was paper.";
    }
    if(aiMove == 2){
        self.aiChoiceLabel.text = @"The computer's choice was scissors.";
    }
}


-(IBAction)getPlayerChoice:(id)sender{
    playerMove = [sender tag];
    [self playRPS];
}

-(void)playRPS{
    [self getAImove];
    if(playerMove == 0 && aiMove == 2){
        winner = 1;self.winLabel.text = @"YOU WIN!!!";}
    else if(playerMove == 1 && aiMove == 0){
        winner = 1;self.winLabel.text = @"YOU WIN!!!";}
    else if(playerMove == 2 && aiMove == 1){
        winner = 1;self.winLabel.text = @"YOU WIN!!!";}
    else if((playerMove == 0 && aiMove == 0)||(playerMove == 1 && aiMove == 1)||(playerMove == 2 && aiMove == 2)){
        winner =2; self.winLabel.text = @"IT'S A TIE =(";
    }
    else{
        winner = 0; self.winLabel.text = @"YOU LOSE!!!";}
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Winner:" message:self.winLabel.text delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil];
    [alert show];

}

@end
