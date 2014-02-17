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

+(MOZUURL*)URLForGetProductsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit noCount:(NSNumber*)noCount {
	NSString* template = @"/api/commerce/catalog/admin/products/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&q={q}&qLimit={qLimit}&noCount={noCount}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
		@"q" : q,
		@"qLimit" : @(qLimit),
		@"noCount" : noCount,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductInCatalogsOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductInCatalogOperationWithProductCode:(NSString*)productCode catalogId:(NSInteger)catalogId {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs/{catalogId}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"catalogId" : @(catalogId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddProductOperation {
	NSString* template = @"/api/commerce/catalog/admin/products/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForAddProductInCatalogOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateProductOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateProductInCatalogsOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateProductInCatalogOperationWithProductCode:(NSString*)productCode catalogId:(NSInteger)catalogId {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs/{catalogId}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"catalogId" : @(catalogId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteProductOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForDeleteProductInCatalogOperationWithProductCode:(NSString*)productCode catalogId:(NSInteger)catalogId {
	NSString* template = @"/api/commerce/catalog/admin/products/{productCode}/ProductInCatalogs/{catalogId}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"catalogId" : @(catalogId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end