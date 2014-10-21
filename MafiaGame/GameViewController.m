//
//  GameViewController.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController {
    UIAlertView *alertViewMessage;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.game = [[Game alloc]init];
    self.game.currentPlayer = self.currentPlayer;
    [self checkButtons];
    alertViewMessage.delegate = self;
    //set delegate if you want to check what button the user selects
    
//    if([self.currentPlayer isKindOfClass:[Mafia class]]){
//        
//        self.welcomeMessageTextView.text = @"Welcome Mafia player";
//        
//    }
//    
//    else if([self.currentPlayer isKindOfClass:[Sheriff class]]){
//        self.welcomeMessageTextView.text = @"Welcome Sheriff player";
//        
//        
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)checkButtons {
    
    Space *currentSpace = [self.game getSpaceWithSpaceName:self.game.currentPlayer.currentSpace];
    
    if(currentSpace.up == nil){
        self.upButton.hidden = YES;
    }
    else {
        self.upButton.hidden = NO;
    }
    
    if(currentSpace.down == nil){
        self.downButton.hidden = YES;
    }
    else {
        self.downButton.hidden = NO;
    }
    
    if(currentSpace.right == nil){
        self.rightButton.hidden = YES;
    }
    else {
        self.rightButton.hidden = NO;
    }
    
    if(currentSpace.left == nil){
        self.leftButton.hidden = YES;
    }
    else {
        self.leftButton.hidden = NO;
    }
    
}

- (IBAction)moveLeft:(id)sender {
    
    [self.game movePlayerwithPosition:@"left"];
    [self checkButtons];

}

- (IBAction)moveUp:(id)sender {
    [self.game movePlayerwithPosition:@"up"];
    [self checkButtons];


}

- (IBAction)moveRight:(id)sender {
    [self.game movePlayerwithPosition:@"right"];
    [self checkButtons];

}

- (IBAction)moveDown:(id)sender {
    [self.game movePlayerwithPosition:@"down"];
    [self checkButtons];


}

-(void)resetGame {
    
    //[self.game resetGame];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

-(void)getSpaceInfo {
    
   NSString *message =  [self.game checkSpace];
    
    alertViewMessage = [[UIAlertView alloc]initWithTitle:@"GameOver" message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Play Again", nil];
    

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
   // playAgainMessage = [[UIAlertView alloc]initWithTitle:@"Play Again?" message:@"Click Play Again to reset the game" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Play Again", nil];
    
    if (buttonIndex == 0){
        //do nothing
    }
    
    else if(buttonIndex == 1){
        //reset game
        [self resetGame];
        
    }
    
}





@end
