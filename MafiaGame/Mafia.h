//
//  Mafia.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "Player.h"

@interface Mafia : Player

@property (nonatomic, assign) int VictimCount;
@property (nonatomic, strong) NSString *spaceName;

@end
