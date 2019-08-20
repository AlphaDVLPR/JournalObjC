//
//  JRCEntry.m
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import "JRCEntry.h"

@implementation JRCEntry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}



@end
