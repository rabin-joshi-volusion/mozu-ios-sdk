
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
#import "MOZUChannel.h"
#import "MOZUChannelCollection.h"


@interface MOZUChannelResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of channels defined for a tenant according to any filter or sort criteria specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)channelsWithWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUChannelCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of the channel specified in the request.
@param code User-defined code that identifies the channel to retrieve.
*/

-(void)channelWithWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUChannel* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new channel that defines a new logical business division to use for financial reporting.
@param channel Properties of the channel to create.
*/

-(void)createChannelWithWithchannel:((MOZUChannel*))channel userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUChannel* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more details of a defined channel, including the associated sites.
@param channel Properties of a the channel to update.
@param code User-defined code that identifies the channel to update.
*/

-(void)updateChannelWithWithchannel:((MOZUChannel*))channel code:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUChannel* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a defined channel for the tenant and removes the defined site associations. After deleting this channel, assign its associated sites to another channel.
@param code User-defined code that identifies the channel to delete.
*/

-(void)deleteChannelWithWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end