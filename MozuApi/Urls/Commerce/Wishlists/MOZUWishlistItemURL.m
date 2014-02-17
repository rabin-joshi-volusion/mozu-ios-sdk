/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistItemURL.h"

@implementation MOZUWishlistItemURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetWishlistItemOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetWishlistItemsOperationWithWishlistId:(NSString*)wishlistId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetWishlistItemsByWishlistNameOperationWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString*)wishlistName startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/wishlists/customers/{customerAccountId}/{wishlistName}/items?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"customerAccountId" : @(customerAccountId),
		@"wishlistName" : wishlistName,
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
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

+(MOZUURL*)URLForAddItemToWishlistOperationWithWishlistId:(NSString*)wishlistId {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateWishlistItemOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateWishlistItemQuantityOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId quantity:(NSInteger)quantity {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}/{quantity}";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
		@"quantity" : @(quantity),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForRemoveAllWishlistItemsOperationWithWishlistId:(NSString*)wishlistId {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForDeleteWishlistItemOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId {
	NSString* template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}";
	NSDictionary* params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end