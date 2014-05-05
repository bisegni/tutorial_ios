//
//  TutorialIOSToDo.m
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "TutorialIOSToDo.h"

    //private interface
@interface TutorialIOSToDo ()
    //todo completion date private field
@property(readonly) NSDate		*dateCompletion;

@end

@implementation TutorialIOSToDo
- (void)setCompleted:(BOOL)completed {
    _completed = completed;
    if(_completed)
        _dateCompletion = [NSDate date];
    else
        _dateCompletion = nil;
}
@end
