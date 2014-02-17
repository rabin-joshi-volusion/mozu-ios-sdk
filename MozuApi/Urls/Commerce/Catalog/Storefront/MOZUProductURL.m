/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductURL.h"

@implementation MOZUProductURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetProductsOperationWithFilter:(NSString*)filter startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy {
	NSString* template = @"/api/commerce/catalog/storefront/products/?filter={filter}&startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}";
	NSDictionary* params = @{
		@"filter" : filter,
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductInventoryOperationWithProductCode:(NSString*)productCode locationCodes:(NSString*)locationCodes {
	NSString* template = @"/api/commerce/catalog/storefront/products/{productCode}/locationinventory?locationCodes={locationCodes}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"locationCodes" : locationCodes,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductOperationWithProductCode:(NSString*)productCode variationProductCode:(NSString*)variationProductCode allowInactive:(NSNumber*)allowInactive skipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/storefront/products/{productCode}?variationProductCode={variationProductCode}&allowInactive={allowInactive}&skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"variationProductCode" : variationProductCode,
		@"allowInactive" : allowInactive,
		@"skipInventoryCheck" : skipInventoryCheck,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForConfiguredProductOperationWithProductCode:(NSString*)productCode includeOptionDetails:(NSNumber*)includeOptionDetails skipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/storefront/products/{productCode}/configure?includeOptionDetails={includeOptionDetails}&skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"includeOptionDetails" : includeOptionDetails,
		@"skipInventoryCheck" : skipInventoryCheck,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForValidateProductOperationWithProductCode:(NSString*)productCode skipInventoryCheck:(NSNumber*)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/storefront/products/{productCode}/validate?skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"skipInventoryCheck" : skipInventoryCheck,
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