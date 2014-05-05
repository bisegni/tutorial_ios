//
//  TutorialIOSToDoTableViewCell.h
//  TutorialIOS
//
//  Created by Claudio Bisegni on 05/05/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TutorialIOSToDoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *completionDate;
@property (weak, nonatomic) IBOutlet UILabel *completionLabel;
-(void) showCompletionInfo:(bool) show;
@end
