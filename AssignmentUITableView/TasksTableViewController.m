//
//  TasksTableViewController.m
//  AssignmentUITableView
//
//  Created by Colby Gatte on 10/5/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "TasksTableViewController.h"
#import "Task.h"

@interface TasksTableViewController ()

@end

@implementation TasksTableViewController


//
//
//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    listOfTasks = [[NSMutableArray alloc] init];
    
    Task *task1 = [[Task alloc] init];
    task1.title = @"eat";
    [listOfTasks addObject:task1];
    
    Task *task2 = [[Task alloc] init];
    task2.title = @"sleep";
    [listOfTasks addObject:task2];
    
    Task *task3 = [[Task alloc] init];
    task3.title = @"drink";
    [listOfTasks addObject:task3];
    
    Task *task4 = [[Task alloc] init];
    task4.title = @"wash dishes";
    [listOfTasks addObject:task4];
    
    Task *task5 = [[Task alloc] init];
    task5.title = @"vacuum";
    [listOfTasks addObject:task5];
    
    
    
    self.myListView.delegate = self;
    self.myListView.dataSource = self;
    
}



//
//
//
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return listOfTasks.count;
    
}

//
//
//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellOne" forIndexPath:indexPath];
   
    Task *task = (Task *) listOfTasks[indexPath.row];
    
    [cell.textLabel setText: task.title];
    
    return cell;
}

//
//
//
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
