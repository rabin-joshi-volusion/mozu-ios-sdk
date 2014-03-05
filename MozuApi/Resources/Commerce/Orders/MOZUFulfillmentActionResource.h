
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
#import "MOZUFulfillmentInfo.h"
#import "MOZUFulfillmentAction.h"
#import "MOZUOrder.h"


@interface MOZUFulfillmentActionResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a list of the fulfillment information for the specified order.
@param draft If true, retrieve the draft version of the order's fulfillment information, which might include uncommitted changes.
@param orderId Retrieves a list of the fulfillment information for the specified order.
*/

-(void)fulfillmentInfoWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUFulfillmentInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Sets the fulfillment action to "Ship" or "PickUp". To ship an order or prepare it for in-store pickup, the order must have a customer name, the "Open" or "OpenAndProcessing" status. To ship the order, it must also have the full shipping address and shipping method. Shipping all packages or picking up all pickups for an order will complete a paid order.
@param body The action to perform for the order fulfillment.
@param orderId Unique identifier of the order for which to perform the fulfillment action.
*/

-(void)performFulfillmentActionWithBody:(MOZUFulfillmentAction*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more propertes of fulfillment information for the specified order. After submitting an order, you can update the shipping address information until the order is fulfilled. When you change the shipping address information for a submitted order, the system sends an email notification of the change to the email address specified in the order billing information.
@param body Array of shipping fulfillment information associated with an order.
@param orderId Unique identifier of the order associated with the fulfillment information to update.
@param updateMode Specifies whether to set the fulfillment information by updating the original order, updating the order in draft mode, or updating the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)setFulFillmentInfoWithBody:(MOZUFulfillmentInfo*)body orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUFulfillmentInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end