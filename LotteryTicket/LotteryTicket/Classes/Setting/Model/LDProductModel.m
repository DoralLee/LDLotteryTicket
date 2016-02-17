//
//  LDProductModel.m
//  LotteryTicket
//
//  Created by guigu on 16/2/15.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDProductModel.h"

@implementation LDProductModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+ (instancetype)productWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
