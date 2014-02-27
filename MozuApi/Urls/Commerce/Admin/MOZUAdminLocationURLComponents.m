/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminLocationURLComponents.h"

@implementation MOZUAdminLocationURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetLocationsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/admin/locations/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetLocationOperationWithLocationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/admin/locations/{locationCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForAddLocationOperation {
	NSString* template = @"/api/commerce/admin/locations/";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateLocationOperationWithLocationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/admin/locations/{locationCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteLocationOperationWithLocationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/admin/locations/{locationCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end