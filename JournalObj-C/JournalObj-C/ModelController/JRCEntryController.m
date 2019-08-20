//
//  JRCEntryController.m
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import "JRCEntryController.h"

@implementation JRCEntryController

+ (JRCEntryController *) shared {
    static JRCEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JRCEntryController new];
    });
    return shared;
}
//CRUD FUNCTIONS

//Create

- (void)addEntryWith:(JRCEntry *)newEntry;
{
    [JRCEntryController.shared.entries addObject:newEntry];
}

- (void)removeEntryWith:(JRCEntry *)removeEntry;
{
    [JRCEntryController.shared.entries removeObject:removeEntry];
}

- (void)updateEntryWith:(JRCEntry *)updateEntry;
{
    NSUInteger entryNumber = [JRCEntryController.shared.entries indexOfObject:updateEntry];
    [JRCEntryController.shared.entries replaceObjectAtIndex:entryNumber withObject:updateEntry];
}



@end
