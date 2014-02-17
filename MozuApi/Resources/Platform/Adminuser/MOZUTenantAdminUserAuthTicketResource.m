
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

-(void)createUserAuthTicketWithWithUserAuthInfo:(MOZUUserAuthInfo*)userAuthInfo tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUTenantAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForCreateUserAuthTicketOperationWithWithUserAuthInfo:userAuthInfo tenantId:tenantId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)refreshAuthTicketWithWithExistingAuthTicket:(MOZUTenantAdminUserAuthTicket*)existingAuthTicket tenantId:(NSNumber*)tenantId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUTenantAdminUserAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForRefreshAuthTicketOperationWithWithExistingAuthTicket:existingAuthTicket tenantId:tenantId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

-(void)deleteUserAuthTicketWithWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUTenantAdminUserAuthTicketClient clientForDeleteUserAuthTicketOperationWithWithRefreshToken:refreshToken userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}



@end