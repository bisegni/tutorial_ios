//
//  TutorialIOSToDo.h
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TutorialIOSToDo : NSObject
    //todo title
@property NSString              *stringToDoTitle;

@property NSNumber				*keyID;

    //complete flag
@property(nonatomic) BOOL       completed;
    //creation date
@property(readonly) NSDate      *dateCreation;
@end
