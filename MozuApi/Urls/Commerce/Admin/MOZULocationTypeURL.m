/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationTypeURL.h"

@implementation MOZULocationTypeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetLocationTypesOperation {
	NSString* template = @"/api/commerce/admin/locationtypes/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetLocationTypeOperationWithLocationTypeCode:(NSString*)locationTypeCode {
	NSString* template = @"/api/commerce/admin/locationtypes/{locationTypeCode}";
	NSDictionary* params = @{
		@"locationTypeCode" : locationTypeCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddLocationTypeOperation {
	NSString* template = @"/api/commerce/admin/locationtypes/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateLocationTypeOperationWithLocationTypeCode:(NSString*)locationTypeCode {
	NSString* template = @"/api/commerce/admin/locationtypes/{locationTypeCode}";
	NSDictionary* params = @{
		@"locationTypeCode" : locationTypeCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteLocationTypeOperationWithLocationTypeCode:(NSString*)locationTypeCode {
	NSString* template = @"/api/commerce/admin/locationtypes/{locationTypeCode}";
	NSDictionary* params = @{
		@"locationTypeCode" : locationTypeCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end