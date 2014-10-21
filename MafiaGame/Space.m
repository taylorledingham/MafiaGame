//
//  Space.m
//  MafiaGame
//
//  Created by Audrey Jun on 2014-10-20.
//  Copyright (c) 2014 audreyjun. All rights reserved.
//

#import "Space.h"

@implementation Space

- (instancetype)initWithUpSpace:(Space *)upSpace
               andWithDownSpace:(Space*)downSpace
               andWithLeftSpace:(Space*)leftSpace
              andWithRightSpace:(Space*)rightSpace
                    andWithName:(NSString*)spaceName
                  andWithPlayer:(Player*)playerName
{
    self = [super init];
    if (self) {
        
        self.up = upSpace;
        self.down = downSpace;
        self.left = leftSpace;
        self.right = rightSpace;
        self.SpaceName = spaceName;
        self.player = playerName;
        
    }
    return self;
}

@end
