/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCategoryURL.h"

@implementation MOZUCategoryURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetCategoriesOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/categories/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetCategoryOperationWithCategoryId:(NSInteger)categoryId {
	NSString* template = @"/api/commerce/catalog/admin/categories/{categoryId}";
	NSDictionary* params = @{
		@"categoryId" : @(categoryId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetChildCategoriesOperationWithCategoryId:(NSInteger)categoryId {
	NSString* template = @"/api/commerce/catalog/admin/categories/{categoryId}/children";
	NSDictionary* params = @{
		@"categoryId" : @(categoryId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddCategoryOperation {
	NSString* template = @"/api/commerce/catalog/admin/categories/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateCategoryOperationWithCategoryId:(NSInteger)categoryId cascadeVisibility:(NSNumber*)cascadeVisibility {
	NSString* template = @"/api/commerce/catalog/admin/categories/{categoryId}?cascadeVisibility={cascadeVisibility}";
	NSDictionary* params = @{
		@"categoryId" : @(categoryId),
		@"cascadeVisibility" : cascadeVisibility,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteCategoryByIdOperationWithCategoryId:(NSInteger)categoryId cascadeDelete:(NSNumber*)cascadeDelete {
	NSString* template = @"/api/commerce/catalog/admin/categories/{categoryId}/?cascadeDelete={cascadeDelete}";
	NSDictionary* params = @{
		@"categoryId" : @(categoryId),
		@"cascadeDelete" : cascadeDelete,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end