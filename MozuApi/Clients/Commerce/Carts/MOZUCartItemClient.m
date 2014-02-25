
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCartItemClient.h"
#import "MOZUCartItemURLComponents.h"
#import "MozuCartItemCollection.h"
#import "MozuCartItem.h"
#import "MozuCart.h"


@implementation MOZUCartItemClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetCartItemsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForGetCartItemsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartItemCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCartItemOperationWithCartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForGetCartItemOperationWithCartItemId:cartItemId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddItemToCartOperationWithBody:(MOZUCartItem*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForAddItemToCartOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateCartItemOperationWithBody:(MOZUCartItem*)body cartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForUpdateCartItemOperationWithCartItemId:cartItemId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateCartItemQuantityOperationWithCartItemId:(NSString*)cartItemId quantity:(NSInteger)quantity userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForUpdateCartItemQuantityOperationWithCartItemId:cartItemId quantity:quantity];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForRemoveAllCartItemsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForRemoveAllCartItemsOperation];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCart alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForDeleteCartItemOperationWithCartItemId:(NSString*)cartItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartItemURLComponents URLComponentsForDeleteCartItemOperationWithCartItemId:cartItemId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end