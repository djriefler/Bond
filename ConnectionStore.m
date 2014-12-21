//
//  ConnectionStore.m
//  BondApp
//
//  Created by Duncan Riefler on 12/18/14.
//  Copyright (c) 2014 Duncan Riefler. All rights reserved.
//
// Singleton Data Store

#import "ConnectionStore.h"

@implementation ConnectionStore
{
    NSMutableArray * connections;
}

- (id) init {
    self = [super init];
    if (self) {
        connections = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (ConnectionStore *) sharedInstance
{
    static ConnectionStore * _sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[ConnectionStore alloc] init];
    });
    
    return _sharedInstance;
}

- (NSArray *) fakeConnections
{
    NSMutableArray * fakeContacts = [[NSMutableArray alloc] init];
    NSString * name1 = @"James";
    NSString * name2 = @"Jill";
    NSString * name3 = @"Bob";

    [fakeContacts addObject:name1];
    [fakeContacts addObject:name2];
    [fakeContacts addObject:name3];

    return fakeContacts;
}

@end
