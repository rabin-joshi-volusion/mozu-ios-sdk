
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersShipmentClient.h"
#import "MOZUCommerceOrdersShipmentURLComponents.h"
#import "MozuShipment.h"
#import "MozuCommerceShippingRate.h"
#import "MozuPackage.h"


@implementation MOZUCommerceOrdersShipmentClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId responseFields:(NSString *)responseFields {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForGetShipmentOperationWithOrderId:orderId shipmentId:shipmentId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUShipment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAvailableShipmentMethodsOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForGetAvailableShipmentMethodsOperationWithOrderId:orderId draft:draft];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUCommerceShippingRate arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreatePackageShipmentsOperationWithBody:(NSArray *)body orderId:(NSString *)orderId {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForCreatePackageShipmentsOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUPackage arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
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

+ (MOZUClient *)clientForDeleteShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForDeleteShipmentOperationWithOrderId:orderId shipmentId:shipmentId];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end