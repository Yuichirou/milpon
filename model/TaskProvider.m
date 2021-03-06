//
//  TaskProvider.m
//  Milpon
//
//  Created by mootoh on 2/26/09.
//  Copyright 2009 deadbeaf.org. All rights reserved.
//

#import "TaskProvider.h"

@implementation TaskProvider

- (NSArray *) tasks:(BOOL) showCompleted
{
   NSAssert(NO, @"not reach here");
   return nil;
}

- (NSArray *) tasksInList:(NSInteger) list_id showCompleted:(BOOL) sc
{
   NSAssert(NO, @"not reach here");
   return nil;
}

- (NSArray *) tasksInTag: (NSInteger) tag_id showCompleted:(BOOL) sc
{
   NSAssert(NO, @"not reach here");
   return nil;
}

- (NSArray *) modifiedTasks
{
   NSAssert(NO, @"not reach here");
   return nil;
}

//- (NSArray *) existingTasks;
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}
//
- (NSNumber *) createAtOffline:(NSDictionary *)params
{
   NSAssert(NO, @"not reach here");
   return nil;
}
//
- (void) createAtOnline:(NSDictionary *)params;
{
   NSAssert(NO, @"not reach here");
}

//- (void) sync
//{
//   NSAssert(NO, @"not reach here");
//}
//
//- (void) complete:(RTMTask *)task
//{
//   NSAssert(NO, @"not reach here");
//}
//
//- (void) uncomplete:(RTMTask *)task;
//{
//   NSAssert(NO, @"not reach here");
//}
//
- (void) remove:(RTMTask *) task;
{
   NSAssert(NO, @"not reach here");
}

- (void) erase
{
   NSAssert(NO, @"not reach here");
}
//
//- (void) createNote:(NSString *)note task_id:(NSNumber *)tid
//{
//   NSAssert(NO, @"not reach here");
//}
//
//- (void) removeNote:(NSNumber *) note_id
//{
//   NSAssert(NO, @"not reach here");
//}
//
//- (NSArray *) getNotes:(RTMTask *) task
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}

- (NSArray *) pendingTasks
{
   NSAssert(NO, @"not reach here");
   return nil;
}

- (RTMTask *) taskForNote:(RTMNote *) note
{
   NSAssert(NO, @"not reach here");
   return nil;
}

- (void) createOrUpdate:(NSDictionary *)params
{
   NSAssert(NO, @"not reach here");
}

//- (void) removeForID:(NSNumber *) task_id
//{
//   NSAssert(NO, @"not reach here");
//}
//
//- (BOOL) taskExist:(NSNumber *)idd
//{
//   NSAssert(NO, @"not reach here");
//   return NO;
//}
//
//- (BOOL) noteExist:(NSNumber *)note_id
//{
//   NSAssert(NO, @"not reach here");
//   return NO;
//}
//
//- (NSArray *) overDueTasks
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}
//
//- (NSArray *) todayTasks
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}
//
//- (NSArray *) tomorrowTasks
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}
//
//- (NSArray *) inAWeekTasks
//{
//   NSAssert(NO, @"not reach here");
//   return nil;
//}

- (NSInteger) todayTaskCount
{
   NSAssert(NO, @"not reach here");
   return -1;
}

- (NSInteger) remainTaskCount
{
   NSAssert(NO, @"not reach here");
   return -1;
}


+ (TaskProvider *) sharedTaskProvider
{
   NSAssert(NO, @"not reach here");
   return nil;
}

@end
