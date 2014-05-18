//
//  TutorialIOSTableViewController.h
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

#import "TutorialIOSToDo.h"
@interface TutorialIOSTableViewController : UITableViewController  <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
