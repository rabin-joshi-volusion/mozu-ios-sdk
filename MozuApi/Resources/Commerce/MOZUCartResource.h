
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
#import "MOZUCart.h"
#import "MOZUCartSummary.h"


@interface MOZUCartResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the cart specified in the request.
@param cartId Identifier of the cart to retrieve.
*/

-(void)cartWithCartId:(NSString *)cartId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a cart's contents for the current shopper. If the shopper does not have an active cart on the site, the service creates one.
*/

-(void)orCreateCartWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves summary information associated with the cart of the current shopper, including the number of items, the current total, and whether the cart has expired. All anonymous idle carts that do not proceed to checkout expire after 14 days.
*/

-(void)cartSummaryWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartSummary* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the cart of the user specified in the request.
@param userId Unique identifier of the user whose cart you want to retrieve.
*/

-(void)userCartWithUserId:(NSString *)userId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves summary information associated with the cart of user specified in the request, including the number of items in the cart, the current total, and whether the cart has expired. All anonymous idle carts that do not proceed to checkout expire after 14 days.
@param userId Unique identifier of the user whose cart details you want to retrieve.
*/

-(void)userCartSummaryWithUserId:(NSString *)userId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartSummary* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the current shopper's cart.
@param body All of the properties of the cart to update. The product code is required.
*/

-(void)updateCartWithBody:(MOZUCart*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the cart specified in the request.
@param cartId Identifier of the cart to delete.
*/

-(void)deleteCartWithCartId:(NSString *)cartId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Deletes the cart of the currently active shopper.
*/

-(void)deleteCurrentCartWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;


@end