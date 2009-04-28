//
//  RTMList.m
//  Milpon
//
//  Created by mootoh on 8/29/08.
//  Copyright 2008 deadbeaf.org. All rights reserved.
//

#import "Collection.h"
#import "RTMList.h"
#import "RTMTask.h"
#import "LocalCache.h"

@implementation RTMList

//@synthesize name, filter;

/*
- (id) initWithID:(NSNumber *)idd forName:(NSString *)nm
{
   if (self = [super init]) {
   }
   return self;
}

- (void) dealloc
{
   [super dealloc];
}
*/

DEFINE_ATTRIBUTE(name, Name, NSString*, EB_LIST_NAME);

- (NSString *) filter
{
   return [self attribute:@"filter"];
}

/*
- (NSArray *) tasks
{
   return [[TaskProvider sharedTaskProvider] tasksInList:self];
}
*/

- (BOOL) isSmart
{
   return self.filter != nil;
}

- (NSInteger) taskCount
{
    NSDictionary *cond = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"list_id=%d AND completed is NULL", self.iD] forKey:@"WHERE"];
    
    NSDictionary *query = [NSDictionary dictionaryWithObject:[NSNumber class] forKey:@"count()"];
    NSArray *counts = [[LocalCache sharedLocalCache] select:query from:@"task" option:cond];
    NSDictionary *count = (NSDictionary *)[counts objectAtIndex:0];
    NSNumber *count_num = [count objectForKey:@"count()"];
    return count_num.integerValue;
}

+ (NSString *) table_name
{
   return @"list";
}

@end // RTMList