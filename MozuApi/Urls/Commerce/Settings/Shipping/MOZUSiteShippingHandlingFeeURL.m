/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingHandlingFeeURL.h"

@implementation MOZUSiteShippingHandlingFeeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetOrderHandlingFeeOperation {
	NSString* template = @"/api/commerce/settings/shipping/orderhandlingfee";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateOrderHandlingFeeOperation {
	NSString* template = @"/api/commerce/settings/shipping/orderhandlingfee";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateOrderHandlingFeeOperation {
	NSString* template = @"/api/commerce/settings/shipping/orderhandlingfee";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end