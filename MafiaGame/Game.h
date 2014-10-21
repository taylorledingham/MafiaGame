//
//  Game.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grid.h"
#import "Player.h"
#import "Space.h"


@interface Game : NSObject

@property (nonatomic, strong) Grid *gameGrid;
@property (nonatomic, strong) Player *currentPlayer;
@property (nonatomic) int deadVillagerCount;

@property (nonatomic, assign) BOOL isWinner;
@property (nonatomic, assign) BOOL contGame;


- (instancetype)init;
-(void) movePlayerwithPosition:(NSString *)spaceName;
-(NSString *) checkSpace;
-(Space *)getSpaceWithSpaceName:(NSString *)spaceName ;
-(void)resetGame;

@end
