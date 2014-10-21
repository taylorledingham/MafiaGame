//
//  WelcomeViewController.h
//  MafiaGame
//
//  Created by Taylor Ledingham on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Game.h"

@interface WelcomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *welcomeMessageTextView;
@property (strong, nonatomic) Player *currentPlayer;



@end
