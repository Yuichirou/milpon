/*
 *  ListProvider.h
 *  Milpon
 *
 *  Created by mootoh on 1/26/09.
 *  Copyright 2009 deadbeaf.org. All rights reserved.
 *
 */

@class RTMList;

@interface ListProvider : NSObject

- (NSArray *) lists;
//- (NSArray *) smartLists;
- (void) sync;

+ (ListProvider *) sharedListProvider;

@end // ListProvider
