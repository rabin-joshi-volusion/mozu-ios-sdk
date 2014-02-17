
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCartClient.h"
#import "MOZUCartResource.h"


@interface MOZUCartResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCartResource

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

-(void)cartWithWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForGetCartOperationWithWithCartId:cartId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)orCreateCart userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForGetOrCreateCartOperation userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)cartSummary userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartSummary* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForGetCartSummaryOperation userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)userCartWithWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForGetUserCartOperationWithWithUserId:userId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)userCartSummaryWithWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCartSummary* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForGetUserCartSummaryOperationWithWithUserId:userId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


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

-(void)updateCartWithWithCart:(MOZUCart*)cart userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCart* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForUpdateCartOperationWithWithcart:cart userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

-(void)deleteCartWithWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForDeleteCartOperationWithWithCartId:cartId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}

-(void)deleteCurrentCart userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCartClient clientForDeleteCurrentCartOperation userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}



@end