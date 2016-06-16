//
//  NSNotificationTest.m
//  NSNotificationTest
//
//  Created by Lycodes_Dong on 6/14/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "NSNotificationTest.h"

@implementation NSNotificationTest

- (id)initWithURL:(NSString *)urlstring {
    
    self = [super init];
    
    if (self) {
        
        NSURL *url = [NSURL URLWithString:urlstring];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error == nil) {
                
                NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
                
                [[NSNotificationCenter defaultCenter]postNotificationName:@"GetJson" object:jsonArray];
                
            }
        }];
        
        [task resume];
        
    }
    
    return self;
    
}

- (void)createNSNotificationWithTarget:(id)target Action:(SEL)action {

    [[NSNotificationCenter defaultCenter]addObserver:target selector:action name:@"GetJson" object:nil];

}

@end
