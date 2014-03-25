
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


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a cart specified by its cart ID.
@param cartId Identifier of the cart being retrieved.
*/

- (void)cartWithCartId:(NSString *)cartId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a cart's contents for the current shopper. If the shopper does not have an active cart on the site, the service creates one.
*/

- (void)orCreateCartWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the number of items in the active cart and the status of the cart such as whether or not it has expired. Only an anonymous user's cart (guest that does not log in) that is emptied and idle will expire after 14 days. Note that the expiration counter is renewed each time action is made to the cart. For shoppers or users that are logged in, the cart does not expire.
*/

- (void)cartSummaryWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCartSummary *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieve a user's cart by specifying the user ID.
@param userId Unique identifier of the user whose cart you want to retrieve.
*/

- (void)userCartWithUserId:(NSString *)userId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the current status of the specified user's cart, including the number of items in the active cart.
@param userId Unique identifier of the user whose cart details you want to retrieve.
*/

- (void)userCartSummaryWithUserId:(NSString *)userId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCartSummary *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
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

- (void)updateCartWithBody:(MOZUCart *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCart *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Delete the cart specified by its cart ID.
@param cartId Identifier of the cart being deleted.
*/

- (void)deleteCartWithCartId:(NSString *)cartId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Deletes the cart of the currently active shopper.
*/

- (void)deleteCurrentCartWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end