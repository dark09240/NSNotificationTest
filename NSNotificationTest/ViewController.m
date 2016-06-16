//
//  ViewController.m
//  NSNotificationTest
//
//  Created by Lycodes_Dong on 6/14/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ViewController.h"
#import "NSNotificationTest.h"

@interface ViewController ()

@property (strong, nonatomic) NSNotificationTest *nsnotificationTest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nsnotificationTest = [[NSNotificationTest alloc]initWithURL:@"http://api.androidhive.info/feed/feed.json"];
    
    [self.nsnotificationTest createNSNotificationWithTarget:self Action:@selector(checkDataWith:)];
    
}

- (void)checkDataWith:(NSNotification *)nsnotification {

    NSArray *array = [nsnotification object];
    
    NSArray *arrayFeed = [array valueForKey:@"feed"];
    
    NSLog(@"%@",arrayFeed);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
