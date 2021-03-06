
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPickupClient.h"
#import "MOZUPickupResource.h"


@interface MOZUPickupResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUPickupResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the actions available to perform for the pickup specified in the request.
@param orderId Unique identifier of the order.
@param pickupId Unique identifier of the pickup to remove.
*/

- (void)availablePickupFulfillmentActionsWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId completionHandler:(void(^)(NSArray *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPickupClient clientForGetAvailablePickupFulfillmentActionsOperationWithOrderId:orderId pickupId:pickupId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of the in-store pickup specified in the request.
@param orderId Unique identifier of the order.
@param pickupId Unique identifier of the pickup to remove.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)pickupWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPickup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPickupClient clientForGetPickupOperationWithOrderId:orderId pickupId:pickupId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Create a new pickup for the order specified in the request for in-store fufillment.
@param body Properties of an in-store pickup defined to fulfill items in an order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createPickupWithBody:(MOZUPickup *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPickup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPickupClient clientForCreatePickupOperationWithBody:body orderId:orderId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Updates one or more details of a defined in-store pickup.
@param body Properties of an in-store pickup defined to fulfill items in an order.
@param orderId Unique identifier of the order.
@param pickupId Unique identifier of the pickup to remove.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updatePickupWithBody:(MOZUPickup *)body orderId:(NSString *)orderId pickupId:(NSString *)pickupId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPickup *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPickupClient clientForUpdatePickupOperationWithBody:body orderId:orderId pickupId:pickupId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Removes a pickup previously defined for order item in-store pickup fulfillment.
@param orderId Unique identifier of the order.
@param pickupId Unique identifier of the pickup to remove.
*/

- (void)deletePickupWithOrderId:(NSString *)orderId pickupId:(NSString *)pickupId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPickupClient clientForDeletePickupOperationWithOrderId:orderId pickupId:pickupId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end