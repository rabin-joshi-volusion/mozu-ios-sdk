/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPaymentURL.h"

@implementation MOZUPaymentURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetPaymentsOperationWithOrderId:(NSString*)orderId {
	NSString* template = @"/api/commerce/orders/{orderId}/payments/";
	NSDictionary* params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetPaymentOperationWithOrderId:(NSString*)orderId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/orders/{orderId}/payments/{paymentId}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAvailablePaymentActionsOperationWithOrderId:(NSString*)orderId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/orders/{orderId}/payments/{paymentId}/actions";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForPerformPaymentActionOperationWithOrderId:(NSString*)orderId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/orders/{orderId}/payments/{paymentId}/actions";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForCreatePaymentActionOperationWithOrderId:(NSString*)orderId {
	NSString* template = @"/api/commerce/orders/{orderId}/payments/actions";
	NSDictionary* params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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



@end