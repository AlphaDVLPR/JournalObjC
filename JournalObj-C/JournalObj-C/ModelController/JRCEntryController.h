//
//  JRCEntryController.h
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JRCEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JRCEntryController : NSObject

//INITS



//------------------------------

//FUNCTIONS

+ (JRCEntryController *)shared;
- (void)addEntryWith:(JRCEntry *)newEntry;
- (void)removeEntryWith:(JRCEntry *)removeEntry;
- (void)updateEntryWith:(JRCEntry *)updateEntry;


//------------------------------

//PROPERTIES

@property (nonatomic, strong) NSMutableArray *entries;
@end

NS_ASSUME_NONNULL_END
