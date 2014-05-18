//
//  TutorialIOSViewController.m
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "TutorialIOSViewController.h"

@interface TutorialIOSViewController ()

@end

@implementation TutorialIOSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.textFieldToDoTitle.delegate = self;
	
	if(self.item) {
		self.switchCompletionState.on = [[self.item valueForKey:@"completed"] boolValue];
		self.textFieldToDoTitle.text = [[self.item valueForKey:@"title"] description];
	} else {
		self.switchCompletionState.on = NO;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue
                  sender:(id)sender
{
    self.save = (sender == self.buttonSave);
    
    if(sender != self.buttonSave) {
		return;
	}
    NSLog(@"Save new data");
    [self.item setValue:self.textFieldToDoTitle.text
                        forKey:@"title"];
    [self.item setValue:[NSNumber numberWithBool:self.switchCompletionState.on]
                 forKey:@"completed"];
    if(self.switchCompletionState.on) {
        [self.item setValue:[NSDate date]
                     forKey:@"dateCompletion"];
    } else {
        [self.item setValue:nil
                     forKey:@"dateCompletion"];
    }
}

- (IBAction)switchCompletionAction:(UISwitch *)sender
                          forEvent:(UIEvent *)event {
	
}
//on editing did ended we get the title
- (IBAction)toDotitle:(UITextField *)sender {
	//self.currentToDo.stringToDoTitle = sender.text;
}

//delegate method:
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField setUserInteractionEnabled:YES];
    [textField resignFirstResponder];
    return YES;
}
@end
