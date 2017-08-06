//
//  BaseTaskNetwork.h
//
//  Created by Le Cong on 5/13/16.
//
//

#import <Foundation/Foundation.h>

static NSString *GET = @"GET";

typedef void (^BlockSuccess)(id data);
typedef void (^BlockProgress)(float progress);
typedef void (^BlockFailure)(NSError *error);

@interface BaseTaskNetwork : NSObject

- (void)requestWithBlockSucess:(BlockSuccess)sucess andBlockFailure:(BlockFailure)failure;
- (void)downloadFileSuccess:(BlockSuccess)success andFailure:(BlockFailure)failure;
- (void)downloadFileWithProgress:(BlockProgress)progress success:(BlockSuccess)success andFailure:(BlockFailure)failure;
- (void)downloadJSONSuccess:(BlockSuccess)success andFailure:(BlockFailure)failure;

#pragma mark - Method Override Subclass

- (NSString *)path;
- (NSString *)method;
- (NSDictionary *)parameters;
- (id)dataWithResponse:(id)response;

@end
