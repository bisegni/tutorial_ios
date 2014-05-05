//
//  TutorialIOSTableViewController.m
//  TutorialIOS
//
//  Created by Claudio Bisegni on 19/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "TutorialIOSTableViewController.h"

//used for request the new created todo item
#import "TutorialIOSViewController.h"
@interface TutorialIOSTableViewController ()

@end

@implementation TutorialIOSTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	//initialize the array
	_toDoItems = [NSMutableArray arrayWithCapacity:3];
	_currentEditingIndex = -1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    NSLog(@"unwindToList");
	
	//add the sequential index
	TutorialIOSViewController *editing = [segue sourceViewController];

	if(self.currentEditingIndex <0 ) {
		//i'm creating a new todo
		editing.currentToDo.keyID = [NSNumber numberWithInt:self.toDoItems.count];

		if(editing.currentToDo != nil) {
			//add new elemento to dictionary
			[self.toDoItems addObject:editing.currentToDo];
			[self.tableView reloadData];
		}
	} else {
		//replace object
		[self.toDoItems replaceObjectAtIndex:[editing.currentToDo.keyID integerValue]
								  withObject:editing.currentToDo];
		//i am in editing
		[self.tableView reloadData];
	}
	
	_currentEditingIndex = -1;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.toDoItems.count;
}

/*
 */
- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    // Configure the cell...
	TutorialIOSToDo *toDoItem = [self.toDoItems objectAtIndex:indexPath.row];
    cell.textLabel.text = toDoItem.stringToDoTitle;
	if(toDoItem.completed) {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
	} else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
    return cell;
}

//row selection
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	_currentEditingIndex = indexPath.row;
	[self performSegueWithIdentifier:@"TodoEditing"
							  sender:self];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation
*/
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	if(self.currentEditingIndex <0 ) return;
	
	UINavigationController *editing_vc = [segue destinationViewController];
	TutorialIOSViewController  *editing = editing_vc.viewControllers[0];
	editing.currentToDo = [self.toDoItems objectAtIndex:self.currentEditingIndex];
}


@end
