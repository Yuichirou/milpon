//
//  RTMTag.m
//  Milpon
//
//  Created by mootoh on 3/10/09.
//  Copyright 2009 deadbeaf.org. All rights reserved.
//

#import "Collection.h"
#import "RTMTag.h"
#import "RTMTask.h"
#import "TagProvider.h"
#import "TaskProvider.h"


@implementation RTMTag

@synthesize iD, name;

- (id) initWithID:(NSNumber *)id_ forName:(NSString *)name_
{
   if (self = [super init]) {
      self.iD   = id_;
      self.name = name_;
   }
   return self;
}

- (void) dealloc
{
   if (iD) [iD release];
   if (name) [name release];
   [super dealloc];
}

- (NSArray *) tasks
{
   return [[TaskProvider sharedTaskProvider] tasksInTag:[self.iD integerValue]];
}

- (id) copyWithZone:(NSZone *)zone
{
   return [self retain];
}

- (NSInteger) taskCount
{
   return [[TagProvider sharedTagProvider] taskCountInTag:self];
}

+ (NSString *) table_name
{
   return @"tag";
}

@end