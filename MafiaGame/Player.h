//
//  Player.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) BOOL isDead;
@property (nonatomic, strong) NSString *currentSpace;

- (instancetype)init;

@end
