//
//  PLTRailway.m
//  plat
//
//  Copyright (c) 2014年 plat. All rights reserved.
//

#import "PLTRailway.h"
#import "AFNetworking.h"

@implementation PLTRailway

+ (void)loadFromCache:(BOOL)loadFromCache
              success:(void(^)(NSArray *railways))success
              failure:(void(^)(NSError *error))failure {
 
    if(loadFromCache) {
        // TODO: cache
    }
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://api.myjson.com/bins/4jyht"
      parameters:nil
         success:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
             
             NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:0];
             for (NSDictionary *item in responseObject[@"items"]) {
                 PLTRailway *railway = [PLTRailway new];
                 railway.railwayName = item[@"name"];
                 // TODO: stations
                 [result addObject:railway];
             }
             
             success(result);
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"Error = %@", error);
             failure(error);
         }
     ];
}
@end
