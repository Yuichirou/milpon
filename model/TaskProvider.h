/*
 *  TaskProvider.h
 *  Milpon
 *
 *  Created by mootoh on 3/05/09.
 *  Copyright 2009 deadbeaf.org. All rights reserved.
 *
 */

@class RTMTask;
@class RTMList;
@class RTMTag;

@interface TaskProvider : NSObject

- (NSArray *) tasks;
- (NSArray *) tasksInList:(RTMList *)list;
- (NSArray *) tasksInTag:(RTMTag *)tag;
- (NSArray *) modifiedTasks;
- (NSArray *) pendingTasks;
- (NSArray *) existingTasks;

/**
 * @return created task id
 */
- (NSNumber *) createAtOffline:(NSDictionary *)params;
- (void) createAtOnline:(NSDictionary *)params;
- (void) sync;
- (void) erase;
- (void) complete:(RTMTask *)task;
- (void) uncomplete:(RTMTask *)task;
- (void) remove:(RTMTask *) task;

- (void) createNote:(NSString *)note task_id:(NSNumber *)tid;

+ (TaskProvider *) sharedTaskProvider;

@end // TaskProvider
