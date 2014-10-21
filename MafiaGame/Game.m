//
//  Game.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "Game.h"

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.deadVillagerCount = 0;
        self.isWinner = NO;
        self.gameGrid = [[Grid alloc]initWithArray];
        self.contGame = YES;
    }
    return self;
}

-(void) movePlayerwithPosition:(NSString *)spaceName {
    
    Space *currentSpace = [self getSpaceWithSpaceName:self.currentPlayer.currentSpace];

    
    if ([spaceName isEqualToString:@"up"]){
        
        self.currentPlayer.currentSpace = currentSpace.up.SpaceName;
        
     //move player up
    }
    
    else if ([spaceName isEqualToString:@"left"]){
        
        self.currentPlayer.currentSpace = currentSpace.left.SpaceName;
  
    }
    
    else if ([spaceName isEqualToString:@"right"]){
        self.currentPlayer.currentSpace = currentSpace.right.SpaceName;
        
    }
    
    else if ([spaceName isEqualToString:@"down"]){
        self.currentPlayer.currentSpace = currentSpace.down.SpaceName;
    
    }

    
    
}


-(NSString *) checkSpace {
    
    NSString *message;
    
    Space *currentSpace = [self getSpaceWithSpaceName:self.currentPlayer.currentSpace];
    
    if([currentSpace.player isKindOfClass:[Villager class]]){
        
        if([self.currentPlayer isKindOfClass:[Mafia class]]){
        
        if (currentSpace.player.isDead == YES){
            //alreayd dead
        }
        else {
            currentSpace.player.isDead = YES;
            //increment dead villager count
            self.deadVillagerCount += 1;
            message = [NSString stringWithFormat: @"You killed a villager, death count is: %d", self.deadVillagerCount ];
        }
        }
    }
    
    else if([currentSpace.player isKindOfClass:[Mafia class]] && [self.currentPlayer isKindOfClass:[Sheriff class]]){
        //you are a sheriff and ran into a mafia, bring into questioning
        message = [NSString stringWithFormat: @"You found the mafia, YOU WIN"];
        self.isWinner = YES;
        self.contGame = NO;
        
    }
    
    else if([currentSpace.player isKindOfClass:[Sheriff class]] && [self.currentPlayer isKindOfClass:[Mafia class]]){
        //you are a mafia and ran into a sheriff, you get arrested
        message = [NSString stringWithFormat: @"You ran into a sheriff for interrogation, YOU LOSE" ];
        self.contGame = NO;
        
    }

    return message;
}


-(void)resetGame {
    
    self.deadVillagerCount = 0;
    self.isWinner = NO;
    self.contGame = YES;
    [self.gameGrid.arraySpaces removeAllObjects];
    self.gameGrid = [[Grid alloc]initWithArray];


    
}

#pragma mark - helper methods

-(Space *)getSpaceWithSpaceName:(NSString *)spaceName {
    
    NSPredicate *spaceNamePredicate = [NSPredicate predicateWithFormat:@"SpaceName = '%@'", spaceName];
    NSArray *fitleredArray = [self.gameGrid.arraySpaces filteredArrayUsingPredicate: spaceNamePredicate ];
    
    Space *currentSpace = [fitleredArray firstObject];
    
    return currentSpace;

}



@end
