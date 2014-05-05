//
//  TutorialIOSToDoTableViewCell.m
//  TutorialIOS
//
//  Created by Claudio Bisegni on 05/05/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "TutorialIOSToDoTableViewCell.h"

@implementation TutorialIOSToDoTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) showCompletionInfo:(bool) show {
	self.completionLabel.hidden = !show;
	self.completionDate.hidden = !show;
}
@end
