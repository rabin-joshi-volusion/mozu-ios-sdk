/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDeveloperAdminUserAuthTicketURL.h"

@implementation MOZUDeveloperAdminUserAuthTicketURL

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

+(MOZUURL*)URLForCreateDeveloperUserAuthTicketOperationWithDeveloperAccountId:(NSNumber*)developerAccountId {
	NSString* template = @"/api/platform/developer/authtickets/?developerAccountId={developerAccountId}";
	NSDictionary* params = @{
		@"developerAccountId" : @(developerAccountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForRefreshDeveloperAuthTicketOperationWithDeveloperAccountId:(NSNumber*)developerAccountId {
	NSString* template = @"/api/platform/developer/authtickets/?developerAccountId={developerAccountId}";
	NSDictionary* params = @{
		@"developerAccountId" : @(developerAccountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteUserAuthTicketOperationWithRefreshToken:(NSString*)refreshToken {
	NSString* template = @"/api/platform/developer/authtickets/?refreshToken={refreshToken}";
	NSDictionary* params = @{
		@"refreshToken" : refreshToken,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kHomePod useSSL:NO];
}



@end