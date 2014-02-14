
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
#import "MOZUAuthTicket.h"
#import "MOZUCartItemCollection.h"
#import "MOZUCartItem.h"
#import "MOZUCart.h"


@interface MOZUCartItemClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of cart items including the total number of items in the cart.
*/

+(MOZUClient*)clientForGetCartItemsOperation userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a particular cart item by providing the cart item ID.
@param cartItemId Identifier of the cart item to retrieve.
*/

+(MOZUClient*)clientForGetCartItemOperationWithWithCartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a product to the current shopper's cart.
@param cartItem All properties of the new cart item. The product code is required.
*/

+(MOZUClient*)clientForAddItemToCartOperationWithWithcartItem:((MOZUCartItem*))cartItem userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the product or product quantity of an item in the current shopper's cart.
@param cartItem The properties of the cart item to update.
@param cartItemId Identifier of the cart item to update.
*/

+(MOZUClient*)clientForUpdateCartItemOperationWithWithcartItem:((MOZUCartItem*))cartItem cartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Update the quantity of an individual cart item in the cart of the current shopper.
@param cartItemId Identifier of the cart item to update quantity.
@param quantity The number of cart items in the shopper's active cart.
*/

+(MOZUClient*)clientForUpdateCartItemQuantityOperationWithWithCartItemId:(NSString*)cartItemId quantity:(NSInteger)quantity userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes all items in the current shopper's active cart.
*/

+(MOZUClient*)clientForRemoveAllCartItemsOperation userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Deletes a specific cart item by providing the cart item ID.
@param cartItemId Identifier of the cart item to delete.
*/

+(MOZUClient*)clientForDeleteCartItemOperationWithWithCartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims;



@end