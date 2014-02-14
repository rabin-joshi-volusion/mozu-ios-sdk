/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderAttributeURL.h"

@implementation MOZUOrderAttributeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetOrderAttributesOperationWithOrderId:(NSString*)orderId {
	NSString* template = @"/api/commerce/orders/{orderId}/attributes";
	NSDictionary* params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateOrderAttributesOperationWithOrderId:(NSString*)orderId {
	NSString* template = @"/api/commerce/orders/{orderId}/attributes";
	NSDictionary* params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateOrderAttributesOperationWithOrderId:(NSString*)orderId removeMissing:(NSNumber*)removeMissing {
	NSString* template = @"/api/commerce/orders/{orderId}/attributes?removeMissing={removeMissing}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"removeMissing" : removeMissing,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end