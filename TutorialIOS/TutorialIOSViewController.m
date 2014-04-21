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
    self.switchCompletionState.on = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue
                  sender:(id)sender
{
    if(sender != self.buttonSave) return;
    NSLog(@"Save");
}

- (IBAction)switchCompletionAction:(UISwitch *)sender
                          forEvent:(UIEvent *)event {
    if(sender.on) {
        NSLog(@"Set the todo as completed");
    }
}
@end
