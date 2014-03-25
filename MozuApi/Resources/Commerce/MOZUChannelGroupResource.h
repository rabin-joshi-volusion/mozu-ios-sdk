
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUChannelGroup.h"
#import "MOZUChannelGroupCollection.h"


@interface MOZUChannelGroupResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)channelGroupsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUChannelGroupCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param code 
*/

- (void)channelGroupWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUChannelGroup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
*/

- (void)createChannelGroupWithBody:(MOZUChannelGroup *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUChannelGroup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param code 
*/

- (void)updateChannelGroupWithBody:(MOZUChannelGroup *)body code:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUChannelGroup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param code 
*/

- (void)deleteChannelGroupWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end