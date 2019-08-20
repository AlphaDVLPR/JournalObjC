//
//  JRCViewController.m
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import "JRCViewController.h"

@interface JRCViewController ()

@end

@implementation JRCViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self updateViews];
}

//Outlets



//To Update Table View


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)updateViews;
{
    _titleTextField.text = self.landingPad.title;
    _bodyTextField.text = self.landingPad.text;
    
}


@end
