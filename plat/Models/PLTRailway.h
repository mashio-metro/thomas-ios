//
//  PLTRailway.h
//  plat
//
//  Copyright (c) 2014年 plat. All rights reserved.
//

#import "PLTModel.h"

@interface PLTRailway : PLTModel

@property(strong)NSString *railwayName;

+ (void)loadFromCache:(BOOL)loadFromCache
          success:(void(^)(NSArray *railways))success
          failure:(void(^)(NSError *error))failure;
@end
