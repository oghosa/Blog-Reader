//
//  BlogPost.m
//  BlogReader
//
//  Created by Oghosa Igbinakenzua on 2014-08-06.
//  Copyright (c) 2014 Oghosa Igbinakenzua. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle: (NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle: (NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL {
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"]; //using format same as format from Json view
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MMM. dd"];
    
    return [dateFormatter stringFromDate:tempDate];
}


@end
