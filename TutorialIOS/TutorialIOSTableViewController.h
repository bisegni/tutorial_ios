//
//  TutorialIOSTableViewController.h
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TutorialIOSToDo.h"
@interface TutorialIOSTableViewController : UITableViewController
- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@property(readonly) NSMutableArray *toDoItems;

@property(readonly) int currentEditingIndex;
@end
