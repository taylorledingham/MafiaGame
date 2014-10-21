//
//  Grid.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Space.h"
#import "Player.h"
#import "Villager.h"
#import "Mafia.h"
#import "Sheriff.h"

@interface Grid : NSObject

@property (nonatomic) NSMutableArray *arraySpaces;

- (instancetype)initWithArray;

@end
