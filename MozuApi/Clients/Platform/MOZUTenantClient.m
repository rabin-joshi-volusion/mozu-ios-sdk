
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTenantClient.h"
#import "MOZUTenantURLComponents.h"
#import "MozuTenant.h"


@implementation MOZUTenantClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetTenantOperationWithTenantId:(NSInteger)tenantId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUTenantURLComponents URLComponentsForGetTenantOperationWithTenantId:tenantId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenant alloc] initWithString:jsonResult error:nil];
	};

	return client;
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