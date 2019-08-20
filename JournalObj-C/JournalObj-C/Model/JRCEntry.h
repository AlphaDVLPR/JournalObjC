//
//  JRCEntry.h
//  JournalObj-C
//
//  Created by AlphaDVLPR on 8/19/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JRCEntry : NSObject


//INIT's

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

//----------------------------------

//FUNCTION's

//No functions

//----------------------------------

//PROPERTIES

@property NSDate *timestamp;
@property NSString *title;
@property NSString *text;

@end

NS_ASSUME_NONNULL_END
