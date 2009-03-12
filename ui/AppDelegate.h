//
//  AppDelegate.h
//  Milpon
//
//  Created by mootoh on 8/27/08.
//  Copyright deadbeaf.org 2008. All rights reserved.
//

@class RTMAuth;

@interface AppDelegate : NSObject <UIApplicationDelegate>
{	
   IBOutlet UIWindow           *window;
   IBOutlet UITabBarController *tabBarController;
   RTMAuth                     *auth;
   NSOperationQueue            *operationQueue;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabBarController;
@property (nonatomic, retain) RTMAuth *auth;
@property (nonatomic, retain) NSOperationQueue *operationQueue;

- (IBAction) addTask;
- (IBAction) saveAuth;
- (IBAction) authDone;
- (IBAction) fetchAll;
- (IBAction) refresh;

@end
