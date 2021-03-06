/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUMasterCatalogURLComponents.h"

@implementation MOZUMasterCatalogURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetMasterCatalogsOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/mastercatalogs/?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetMasterCatalogOperationWithMasterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/mastercatalogs/{masterCatalogId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"masterCatalogId" : @(masterCatalogId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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

+ (MOZUURLComponents *)URLComponentsForUpdateMasterCatalogOperationWithMasterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/mastercatalogs/{masterCatalogId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"masterCatalogId" : @(masterCatalogId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end