/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPackageURL.h"

@implementation MOZUPackageURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetPackageOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId {
	NSString* template = @"/api/commerce/returns/{returnId}/packages/{packageId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetPackageLabelOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId {
	NSString* template = @"/api/commerce/returns/{returnId}/packages/{packageId}/label";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreatePackageOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}/packages";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdatePackageOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId {
	NSString* template = @"/api/commerce/returns/{returnId}/packages/{packageId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeletePackageOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId {
	NSString* template = @"/api/commerce/returns/{returnId}/packages/{packageId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end