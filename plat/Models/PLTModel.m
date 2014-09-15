//
//  PLTModel.m
//  plat
//
//  Copyright (c) 2014年 plat. All rights reserved.
//

#import "PLTModel.h"
#import "AFNetworking.h"

@implementation PLTModel
+ (void)loadWithUrl:(NSString *)url
            success:(void(^)(NSArray *contents))success
            failure:(void(^)(NSError *error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url
      parameters:nil
         success:^(NSURLSessionDataTask *task, NSDictionary *responseObject) {
             
             NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:0];
             // TODO: do something
             
             success(result);
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"Error = %@", error);
             failure(error);
         }
     ];
    
}
@end
