//
//  JRCEntryListTableViewController.h
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRCEntryController.h"
#import "JRCViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface JRCEntryListTableViewController : UITableViewController

@property(nonatomic , strong) JRCEntry *landingPad;

@end

NS_ASSUME_NONNULL_END
