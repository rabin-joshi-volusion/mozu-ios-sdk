/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTransactionURL.h"

@implementation MOZUTransactionURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetTransactionsOperationWithAccountId:(NSInteger)accountId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddTransactionOperationWithAccountId:(NSInteger)accountId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
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

+(MOZUURL*)URLForRemoveTransactionOperationWithAccountId:(NSInteger)accountId transactionId:(NSString*)transactionId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions/{transactionId}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"transactionId" : transactionId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end