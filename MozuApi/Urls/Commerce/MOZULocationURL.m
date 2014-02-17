/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationURL.h"

@implementation MOZULocationURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetLocationOperationWithCode:(NSString*)code {
	NSString* template = @"/api/commerce/storefront/locations/{code}";
	NSDictionary* params = @{
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetLocationInUsageTypeOperationWithLocationUsageType:(NSString*)locationUsageType code:(NSString*)code {
	NSString* template = @"/api/commerce/storefront/locationUsageTypes/{locationUsageType}/locations/{code}";
	NSDictionary* params = @{
		@"locationUsageType" : locationUsageType,
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetLocationsInUsageTypeOperationWithLocationUsageType:(NSString*)locationUsageType startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/storefront/locationUsageTypes/{locationUsageType}/locations?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"locationUsageType" : locationUsageType,
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetDirectShipLocationOperation {
	NSString* template = @"/api/commerce/storefront/locationUsageTypes/DS/location";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetInStorePickupLocationOperationWithCode:(NSString*)code {
	NSString* template = @"/api/commerce/storefront/locationUsageTypes/SP/locations/{code}";
	NSDictionary* params = @{
		@"code" : code,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetInStorePickupLocationsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/storefront/locationUsageTypes/SP/locations?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
		@"filter" : filter,
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end