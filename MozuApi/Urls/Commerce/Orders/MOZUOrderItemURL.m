/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderItemURL.h"

@implementation MOZUOrderItemURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId draft:(NSNumber*)draft {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}?draft={draft}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"draft" : draft,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetOrderItemsOperationWithOrderId:(NSString*)orderId draft:(NSNumber*)draft {
	NSString* template = @"/api/commerce/orders/{orderId}/items?draft={draft}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"draft" : draft,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateOrderItemOperationWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version skipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/orders/{orderId}/items?updatemode={updateMode}&version={version}&skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode,
		@"version" : version,
		@"skipInventoryCheck" : skipInventoryCheck,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateOrderItemDiscountOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}/discounts/{discountId}?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"discountId" : @(discountId),
		@"updateMode" : updateMode,
		@"version" : version,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateItemFulfillmentOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}/fulfillment?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"updateMode" : updateMode,
		@"version" : version,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateItemProductPriceOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId price:(NSDecimalNumber*)price updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}/price/{price}?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"price" : price,
		@"updateMode" : updateMode,
		@"version" : version,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateItemQuantityOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId quantity:(NSInteger)quantity updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}/quantity/{quantity}?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"quantity" : @(quantity),
		@"updateMode" : updateMode,
		@"version" : version,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/items/{orderItemId}?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"orderItemId" : orderItemId,
		@"updateMode" : updateMode,
		@"version" : version,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end