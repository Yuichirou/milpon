/*
 *  TagProvider.h
 *  Milpon
 *
 *  Created by mootoh on 3/10/09.
 *  Copyright 2009 deadbeaf.org. All rights reserved.
 *
 */

@class RTMTag;

@interface TagProvider : NSObject

- (NSArray *) tags;
//- (NSArray *) smartTags;

- (void) create:(NSDictionary *)params;
- (void) createRelation:(NSNumber *)task_id tag_id:(NSNumber *)tag_id;
- (void) removeRelationForTask:(NSInteger)task_id;
- (void) remove:(RTMTag *) tag;
- (void) erase; // remove all tags from DB.
- (NSNumber *) find:(NSString *)tag_name;
- (NSInteger)taskCountInTag:(RTMTag *) tag;
- (NSArray *) tagsInTask:(NSInteger) task_id;
- (BOOL) existRelation:(NSNumber *)task_id tag_id:(NSNumber *)tag_id;

/**
 * taskseries_id is set temporal task_id for offline created task.
 * so it needs to be updated when task is going to be synced on the web.
 *
 * should be called while syncing.
 */
- (void) updateTaskSeriesID:(RTMTag *)tag tid:(NSNumber *)tid;

/**
 * replace all local tags with tags on the web.
 */
- (void) sync;

+ (TagProvider *) sharedTagProvider;

@end // TagProvider

