//
//  Player.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isDead = NO;
    }
    return self;
}

@end
