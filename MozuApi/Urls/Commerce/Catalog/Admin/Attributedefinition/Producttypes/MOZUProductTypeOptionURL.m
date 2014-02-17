/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeOptionURL.h"

@implementation MOZUProductTypeOptionURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetOptionsOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Options";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddOptionOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Options";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}/Options/{attributeFQN}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end