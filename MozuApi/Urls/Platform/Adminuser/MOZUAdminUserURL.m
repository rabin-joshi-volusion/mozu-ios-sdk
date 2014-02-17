/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminUserURL.h"

@implementation MOZUAdminUserURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetUserOperationWithUserId:(NSString*)userId {
	NSString* template = @"/api/platform/adminuser/accounts/{userId}";
	NSDictionary* params = @{
		@"userId" : userId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetTenantScopesForUserOperationWithUserId:(NSString*)userId {
	NSString* template = @"/api/platform/adminuser/accounts/{userId}/tenants";
	NSDictionary* params = @{
		@"userId" : userId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end