//
//  WelcomeViewController.m
//  MafiaGame
//
//  Created by Taylor Ledingham on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if([self.currentPlayer isKindOfClass:[Mafia class]]){
        
        self.welcomeMessageTextView.text = @"Welcome Mafia player";
        
    }
        
    else if([self.currentPlayer isKindOfClass:[Sheriff class]]){
        self.welcomeMessageTextView.text = @"Welcome Sheriff player";

        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
        WelcomeViewController *destViewController = segue.destinationViewController;
        destViewController.currentPlayer = self.currentPlayer;
        
    
    
    
}


@end
