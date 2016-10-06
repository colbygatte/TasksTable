//
//  TasksTableViewController.h
//  AssignmentUITableView
//
//  Created by Colby Gatte on 10/5/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "ViewController.h"
#import "Task.h"

@interface TasksTableViewController : ViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *listOfTasks;
}


@property (nonatomic, weak) IBOutlet UITableView *myListView;


@end
