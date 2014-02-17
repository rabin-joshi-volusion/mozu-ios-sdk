/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerGroupURL.h"

@implementation MOZUCustomerGroupURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetAccountGroupsOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/groups/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/groups/{groupId}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"groupId" : @(groupId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/groups/{groupId}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"groupId" : @(groupId),
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

+(MOZUURL*)URLForDeleteAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/groups/{groupId}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"groupId" : @(groupId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end