//
//  GameViewController.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "ViewController.h"
#import "Space.h"
#import "Player.h"
#import "Villager.h"
#import "Mafia.h"
#import "Sheriff.h"
#import "Game.h"

@interface GameViewController : ViewController <UIAlertViewDelegate>

@property (nonatomic, strong) Game *game;

@property (weak, nonatomic) IBOutlet UIButton *upButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UIButton *downButton;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;

@property (strong, nonatomic) Player *currentPlayer;


- (IBAction)moveLeft:(id)sender;
- (IBAction)moveUp:(id)sender;
- (IBAction)moveRight:(id)sender;
- (IBAction)moveDown:(id)sender;

@end
