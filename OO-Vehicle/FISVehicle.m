//
//  FISVehicle.m
//  OO-Vehicle
//
//  Created by Chris Gonzales on 5/7/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISVehicle.h"

@implementation FISVehicle

-(instancetype) initWithWeight:(CGFloat)weight topSpeed:(CGFloat)topSpeed currentSpeed:(CGFloat)currentSpeed  currentDirection:(CGFloat)currentDirection {
    
    self = [super init];
    _weight = weight;
    _topSpeed = topSpeed;
    _currentSpeed = currentSpeed;
    _currentDirection = currentDirection;
    return self;
    
}

-(void)increaseSpeed {
    _currentSpeed = _topSpeed;
}

-(void)brake {
    _currentSpeed = 0;
}

-(void)turnLeft; {
    if (_currentDirection == 0) {
        _currentDirection = 360;
    }
    _currentDirection = _currentDirection - 90;
}

-(void)turnRight {
    if (_currentDirection == 270) {
        _currentDirection = 0;
    } else {
        _currentDirection = _currentDirection + 90;
    }
}



@end
