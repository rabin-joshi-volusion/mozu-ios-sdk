/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUBillingInfoURL.h"

@implementation MOZUBillingInfoURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetBillingInfoOperationWithOrderId:(NSString*)orderId draft:(NSNumber*)draft {
	NSString* template = @"/api/commerce/orders/{orderId}/billinginfo?draft={draft}";
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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForSetBillingInfoOperationWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version {
	NSString* template = @"/api/commerce/orders/{orderId}/billinginfo?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
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



@end