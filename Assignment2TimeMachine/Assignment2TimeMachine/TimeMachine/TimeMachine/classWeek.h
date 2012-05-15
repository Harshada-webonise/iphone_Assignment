//
//  classWeek.h
//  TimeMachine
//
//  Created by nachi on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface classWeek : NSObject{
    
    NSString *Day;
    int startTime;
    NSString *startState;
    int endTime;
    NSString *endState;
    
}


@property(nonatomic,retain) NSString *Day;
@property(nonatomic) int startTime;
@property(nonatomic,retain) NSString *startState;
@property(nonatomic) int endTime;
@property(nonatomic,retain) NSString *endState;


@end
