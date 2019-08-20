//
//  JRCEntryListTableViewController.m
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import "JRCEntryListTableViewController.h"

@interface JRCEntryListTableViewController ()

@end

@implementation JRCEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return JRCEntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    // Configure the cell...
    JRCEntry *entry =
    JRCEntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        JRCEntry *entry =
        JRCEntryController.shared.entries[indexPath.row];
        
        [JRCEntryController.shared removeEntryWith:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqual: @"showCell"]) {
    
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        JRCViewController *destinationVC = segue.destinationViewController;
        
        JRCEntry *sender = JRCEntryController.shared.entries[indexPath.row];
        
        destinationVC.landingPad = sender;
}
}
        
@end
