/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCartURLComponents.h"

@implementation MOZUCartURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetCartOperationWithCartId:(NSString*)cartId {
	NSString* template = @"/api/commerce/carts/{cartId}";
	NSDictionary* params = @{
		@"cartId" : cartId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetOrCreateCartOperation {
	NSString* template = @"/api/commerce/carts/current";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetCartSummaryOperation {
	NSString* template = @"/api/commerce/carts/summary";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetUserCartOperationWithUserId:(NSString*)userId {
	NSString* template = @"/api/commerce/carts/user/{userId}";
	NSDictionary* params = @{
		@"userId" : userId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetUserCartSummaryOperationWithUserId:(NSString*)userId {
	NSString* template = @"/api/commerce/carts/user/{userId}/summary";
	NSDictionary* params = @{
		@"userId" : userId,
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

+(MOZUURLComponents*)URLComponentsForUpdateCartOperation {
	NSString* template = @"/api/commerce/carts/current";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteCartOperationWithCartId:(NSString*)cartId {
	NSString* template = @"/api/commerce/carts/{cartId}";
	NSDictionary* params = @{
		@"cartId" : cartId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForDeleteCurrentCartOperation {
	NSString* template = @"/api/commerce/carts/current";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end