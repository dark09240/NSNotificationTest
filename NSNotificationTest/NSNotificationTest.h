//
//  NSNotificationTest.h
//  NSNotificationTest
//
//  Created by Lycodes_Dong on 6/14/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationTest : NSObject

- (id)initWithURL:(NSString *)urlstring;

- (void)createNSNotificationWithTarget:(id)target Action:(SEL)action;

@end
