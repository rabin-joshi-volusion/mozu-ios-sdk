//
//  MozuClient.h
//  Api
//
//  Created by Sanjay Mandadi on 10/15/13.
//  Copyright (c) 2013 Mozu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUApiError.h"
#import "MOZUAPIContext.h"
#import "MOZUUserAuthenticator.h"
#import "MOZUURL.h"

// add http response and get rid of headers
//
typedef void(^MOZUClientCompletionBlock)(id result, MOZUApiError* error, NSHTTPURLResponse* response);
typedef id(^MOZUClientJSONParserBlock)(NSString* JSONResult);

@interface MOZUClient : NSObject

@property(nonatomic,readonly) NSString* JSONResult;
@property(nonatomic,readonly) id result; // Is this needed?
@property(nonatomic,readonly) NSInteger statusCode;
@property(nonatomic,readonly) MOZUApiError* error;
@property(nonatomic,readonly) NSDictionary* headers;

@property (nonatomic, strong) MOZUUserAuthTicket * userClaims;
@property (nonatomic, strong) JSONModel * body;
@property (nonatomic, strong) MOZUClientJSONParserBlock JSONParser;
@property (nonatomic, strong) MOZUAPIContext  *context;


- (instancetype)initWithResourceURL:(MOZUURL *)resourceURL
                               verb:(NSString *)verb;
- (void)setHeader:(NSString *)header value:(NSString *)value;
- (void)executeWithCompletionHandler:(MOZUClientCompletionBlock)completionHandler;

@end