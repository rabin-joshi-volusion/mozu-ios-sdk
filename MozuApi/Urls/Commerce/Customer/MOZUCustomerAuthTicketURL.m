/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAuthTicketURL.h"

@implementation MOZUCustomerAuthTicketURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateUserAuthTicketOperation {
	NSString* template = @"/api/commerce/customer/authtickets/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForRefreshUserAuthTicketOperationWithRefreshToken:(NSString*)refreshToken {
	NSString* template = @"/api/commerce/customer/authtickets/refresh?refreshToken={refreshToken}";
	NSDictionary* params = @{
		@"refreshToken" : refreshToken,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end