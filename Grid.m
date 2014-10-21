//
//  Grid.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "Grid.h"

@implementation Grid

- (instancetype)initWithArray
{
    self = [super init];
    if (self) {
        self.arraySpaces = [self createSpaces];
        [self addPlayerToGrid];
        [self addMafiaToGrid];
        [self addSheriffToGrid];
        
    }
    return self;
}

-(NSMutableArray*) createSpaces {
    Space *room1, *room2, *room3, *room4, *room5, *room6, *room7, *room8, *room9, *room10, *room11, *room12, *room13, *room14, *room15, *room16;

    room1 = [[Space alloc] initWithUpSpace:room5 andWithDownSpace:nil andWithLeftSpace:nil andWithRightSpace:room2 andWithName:@"room1" andWithPlayer:nil];
    
    room2 = [[Space alloc] initWithUpSpace:room6 andWithDownSpace:nil andWithLeftSpace:room1 andWithRightSpace:room3 andWithName:@"room2" andWithPlayer:nil];
    
    room3 = [[Space alloc] initWithUpSpace:room7 andWithDownSpace:nil andWithLeftSpace:room2 andWithRightSpace:room4 andWithName:@"room3" andWithPlayer:nil];
    
    room4 = [[Space alloc] initWithUpSpace:room8 andWithDownSpace:nil andWithLeftSpace:room3 andWithRightSpace:nil andWithName:@"room4" andWithPlayer:nil];
    
    room5 = [[Space alloc] initWithUpSpace:room9 andWithDownSpace:room1 andWithLeftSpace:nil andWithRightSpace:room6 andWithName:@"room5" andWithPlayer:nil];
    
    room6 = [[Space alloc] initWithUpSpace:room10 andWithDownSpace:room2 andWithLeftSpace:room5 andWithRightSpace:room7 andWithName:@"room6" andWithPlayer:nil];
    
    room7 = [[Space alloc] initWithUpSpace:room11 andWithDownSpace:room3 andWithLeftSpace:room6 andWithRightSpace:room8 andWithName:@"room7" andWithPlayer:nil];
    
    room8 = [[Space alloc] initWithUpSpace:room12 andWithDownSpace:room4 andWithLeftSpace:room7 andWithRightSpace:nil andWithName:@"room8" andWithPlayer:nil];
    
    room9 = [[Space alloc] initWithUpSpace:room13 andWithDownSpace:room5 andWithLeftSpace:nil andWithRightSpace:room10 andWithName:@"room9" andWithPlayer:nil];
    
    room10 = [[Space alloc] initWithUpSpace:room14 andWithDownSpace:room6 andWithLeftSpace:room9 andWithRightSpace:room11 andWithName:@"room10" andWithPlayer:nil];
    
    room11 = [[Space alloc] initWithUpSpace:room15 andWithDownSpace:room7 andWithLeftSpace:room10 andWithRightSpace:room12 andWithName:@"room11" andWithPlayer:nil];
    
    room12 = [[Space alloc] initWithUpSpace:room16 andWithDownSpace:room8 andWithLeftSpace:room11 andWithRightSpace:nil andWithName:@"room12" andWithPlayer:nil];
    
    room13 = [[Space alloc] initWithUpSpace:nil andWithDownSpace:room9 andWithLeftSpace:nil andWithRightSpace:room14 andWithName:@"room13" andWithPlayer:nil];
    
    room14 = [[Space alloc] initWithUpSpace:nil andWithDownSpace:room10 andWithLeftSpace:room13 andWithRightSpace:room15 andWithName:@"room14" andWithPlayer:nil];
    
    room15 = [[Space alloc] initWithUpSpace:nil andWithDownSpace:room11 andWithLeftSpace:room14 andWithRightSpace:room16 andWithName:@"room15" andWithPlayer:nil];
    
    room16 = [[Space alloc] initWithUpSpace:nil andWithDownSpace:room12 andWithLeftSpace:room15 andWithRightSpace:nil andWithName:@"room16" andWithPlayer:nil];
    
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithObjects:room1, room2, room3, room4, room5, room6, room7, room8, room9, room10, room11, room12, room13, room14, room15, room16, nil];
    
    return newArray;
    
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}


-(void)addPlayerToGrid {

//    for (int i = 0; i < 3; i++) {
//        Villager *newVillager = [[Villager alloc] init];
//
//        [self addCharacterToGridWithPlayerType:newVillager];
//    }
    
            Villager *newVillager1 = [[Villager alloc] init];
    Villager *newVillager2 = [[Villager alloc] init];
    Villager *newVillager3 = [[Villager alloc] init];
    
            [self addCharacterToGridWithPlayerType:newVillager1];
     [self addCharacterToGridWithPlayerType:newVillager2];
     [self addCharacterToGridWithPlayerType:newVillager3];
    
}

-(void)addSheriffToGrid {
    Sheriff *newSheriff = [[Sheriff alloc]init];
    [self addCharacterToGridWithPlayerType:newSheriff];
}

-(void)addMafiaToGrid {
    Mafia *newMafia = [[Mafia alloc]init];
    
   [self addCharacterToGridWithPlayerType:newMafia];
    
   }

-(void)addCharacterToGridWithPlayerType:(Player *)player {
    int random;
    Space *space;
    
    BOOL isSpaceAvailable = NO;
    while (isSpaceAvailable == NO) {
       random = [self getRandomNumberBetween:0 to:(int)(self.arraySpaces.count-1)];
        space = [self.arraySpaces objectAtIndex:random];
        if (space.player == nil) {
            space.player = player;
            isSpaceAvailable = YES;
        }
    }

    
    
}



@end
