//
//  ViewController.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "ViewController.h"
#import "WelcomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    WelcomeViewController *destViewController = segue.destinationViewController;

    
    if([segue.identifier isEqualToString:@"mafiaWelcomeView"] ){
        
        destViewController.currentPlayer = [[Mafia alloc]init];
        
        
    }
    
    else if([segue.identifier isEqualToString:@"sheriffWelcomeView"] ){
        
        destViewController.currentPlayer = [[Sheriff alloc]init];
        
        
    }

        
    
}

@end
