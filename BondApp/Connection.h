//
//  Connection.h
//  BondApp
//
//  Created by Duncan Riefler on 12/18/14.
//  Copyright (c) 2014 Duncan Riefler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Connection : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSString * topInterest;
@property (nonatomic) NSMutableArray * interests;

@end
