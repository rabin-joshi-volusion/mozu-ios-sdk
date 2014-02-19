
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTenantAdminUserAuthTicketClient.h"
#import "MOZUTenantAdminUserAuthTicketResource.h"


@interface MOZUTenantAdminUserAuthTicketResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUTenantAdminUserAuthTicketResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

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

/**
Creates an authentication ticket for the supplied user to specify in API requests associated with the supplied tenant.
@param userAuthInfo The user authentication information required to generate the user authentication ticket, which consists of a user name and password.
@param tenantId Unique identifier of the development or production tenant for which to generate the user authentication ticket.
*/

-(void)createUserAuthTicketWithUserAuthInfo:(MOZUUserAuthInfo*)userAuthInfo tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUTenantAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForCreateUserAuthTicketOperationWithUserAuthInfo:userAuthInfo tenantId:tenantId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Generates a new user authentication ticket for the specified tenant by supplying the user's existing refresh token information.
@param existingAuthTicket Properties of the authentication ticket to refresh. The refresh token is required to complete this request.
@param tenantId 
*/

-(void)refreshAuthTicketWithExistingAuthTicket:(MOZUTenantAdminUserAuthTicket*)existingAuthTicket tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUTenantAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForRefreshAuthTicketOperationWithExistingAuthTicket:existingAuthTicket tenantId:tenantId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the authentication ticket for the user by supplying the refresh token.
@param refreshToken Refresh token string associated with the user authentication ticket.
*/

-(void)deleteUserAuthTicketWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForDeleteUserAuthTicketOperationWithRefreshToken:refreshToken userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end