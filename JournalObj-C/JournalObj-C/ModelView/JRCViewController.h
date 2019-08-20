//
//  JRCViewController.h
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRCEntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface JRCViewController : UIViewController

//OUTLETS
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextField;
- (IBAction)clearTextButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property(nonatomic , strong) JRCEntry *landingPad;


-(void)updateViews;

@end

NS_ASSUME_NONNULL_END
