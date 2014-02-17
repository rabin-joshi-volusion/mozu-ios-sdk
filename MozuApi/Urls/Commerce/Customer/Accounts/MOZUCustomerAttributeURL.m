/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeURL.h"

@implementation MOZUCustomerAttributeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetAccountAttributeOperationWithAccountId:(NSInteger)accountId attributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/attributes/{attributeFQN}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAccountAttributesOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/attributes?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
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

+(MOZUURL*)URLForAddAccountAttributeOperationWithAccountId:(NSInteger)accountId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/attributes";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateAccountAttributeOperationWithAccountId:(NSInteger)accountId removeMissing:(NSNumber*)removeMissing {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/attributes?removeMissing={removeMissing}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"removeMissing" : removeMissing,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end