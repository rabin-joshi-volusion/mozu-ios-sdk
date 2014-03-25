
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersShipmentClient.h"
#import "MOZUCommerceOrdersShipmentResource.h"



@interface MOZUCommerceOrdersShipmentResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUCommerceOrdersShipmentResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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

@param orderId 
@param shipmentId 
*/

- (void)shipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUShipment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForGetShipmentOperationWithOrderId:orderId shipmentId:shipmentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the available shipping methods applicable to the order. Typically used to display available shipping method options on the checkout page.
@param orderId Unique identifier of the order for the available shipment methods being retrieved.
*/

- (void)availableShipmentMethodsWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUShippingRate> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForGetAvailableShipmentMethodsOperationWithOrderId:orderId userClaims:userClaims];
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
Creates a shipment from one or more package associated with an order and assign a label and tracking number to an order shipment.
@param body List of unique identifiers for each package associated with this shipment. Not all packages must belong to the same shipment.
@param orderId Unique identifier of the order for this shipment.
*/

- (void)createPackageShipmentsWithBody:(NSString *)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUCommercePackage> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForCreatePackageShipmentsOperationWithBody:body orderId:orderId userClaims:userClaims];
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Cancels a shipment.
@param orderId Unique identifier of the order to cancel shipment.
@param shipmentId Unique identifier of the shipment to cancel.
*/

- (void)deleteShipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForDeleteShipmentOperationWithOrderId:orderId shipmentId:shipmentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end