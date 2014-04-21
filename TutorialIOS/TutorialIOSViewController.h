//
//  TutorialIOSViewController.h
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TutorialIOSViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonSave;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonCancel;

@property (weak, nonatomic) IBOutlet UITextField *textFieldToDoTitle;
@property (weak, nonatomic) IBOutlet UISwitch *switchCompletionState;

@end
