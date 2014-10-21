//
//  Space.h
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Space : NSObject

@property (nonatomic) Space *up;
@property (nonatomic) Space *down;
@property (nonatomic) Space *right;
@property (nonatomic) Space *left;

@property (nonatomic, strong) NSString *SpaceName;

@property (nonatomic, assign) Player *player;

- (instancetype)initWithUpSpace:(Space *)upSpace andWithDownSpace:(Space*)downSpace andWithLeftSpace:(Space*)leftSpace andWithRightSpace:(Space*)rightSpace andWithName:(NSString*)spaceName andWithPlayer:(Player*)playerName;

@end
