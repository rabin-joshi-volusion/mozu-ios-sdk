
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingHandlingFeeClient.h"
#import "MOZUSiteShippingHandlingFeeResource.h"


@interface MOZUSiteShippingHandlingFeeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUSiteShippingHandlingFeeResource

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

-(void)orderHandlingFee userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUSiteShippingHandlingFeeClient clientForGetOrderHandlingFeeOperation userClaims:userClaims];
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

-(void)createOrderHandlingFeeWithWithOrderHandlingFee:(MOZUSiteShippingHandlingFee*)orderHandlingFee userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUSiteShippingHandlingFeeClient clientForCreateOrderHandlingFeeOperationWithWithorderHandlingFee:orderHandlingFee userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateOrderHandlingFeeWithWithOrderHandlingFee:(MOZUSiteShippingHandlingFee*)orderHandlingFee userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUSiteShippingHandlingFeeClient clientForUpdateOrderHandlingFeeOperationWithWithorderHandlingFee:orderHandlingFee userClaims:userClaims];
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



@end