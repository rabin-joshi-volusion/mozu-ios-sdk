
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCartItemClient.h"
#import "MOZUCartItemResource.h"



@interface MOZUCartItemResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUCartItemResource


-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of cart items including the total number of items in the cart.
*/

-(void)cartItemsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartItemCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForGetCartItemsOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a particular cart item by providing the cart item ID.
@param cartItemId Identifier of the cart item to retrieve.
*/

-(void)cartItemWithCartItemId:(NSString *)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartItem* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForGetCartItemOperationWithCartItemId:cartItemId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a product to the current shopper's cart.
@param body All properties of the new cart item. The product code is required.
*/

-(void)addItemToCartWithBody:(MOZUCartItem*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartItem* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForAddItemToCartOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the product or product quantity of an item in the current shopper's cart.
@param body The properties of the cart item to update.
@param cartItemId Identifier of the cart item to update.
*/

-(void)updateCartItemWithBody:(MOZUCartItem*)body cartItemId:(NSString *)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartItem* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForUpdateCartItemOperationWithBody:body cartItemId:cartItemId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Update the quantity of an individual cart item in the cart of the current shopper.
@param cartItemId Identifier of the cart item to update quantity.
@param quantity The number of cart items in the shopper's active cart.
*/

-(void)updateCartItemQuantityWithCartItemId:(NSString *)cartItemId quantity:(NSInteger)quantity userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartItem* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForUpdateCartItemQuantityOperationWithCartItemId:cartItemId quantity:quantity userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes all items in the current shopper's active cart.
*/

-(void)removeAllCartItemsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForRemoveAllCartItemsOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Deletes a specific cart item by providing the cart item ID.
@param cartItemId Identifier of the cart item to delete.
*/

-(void)deleteCartItemWithCartItemId:(NSString *)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCartItemClient clientForDeleteCartItemOperationWithCartItemId:cartItemId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end