
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAuthTicketClient.h"
#import "MOZUCustomerAuthTicketResource.h"



@interface MOZUCustomerAuthTicketResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUCustomerAuthTicketResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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

@param body 
*/

- (void)createUserAuthTicketWithBody:(MOZUCustomerUserAuthInfo *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAuthTicketClient clientForCreateUserAuthTicketOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

@param refreshToken 
*/

- (void)refreshUserAuthTicketWithRefreshToken:(NSString *)refreshToken userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAuthTicketClient clientForRefreshUserAuthTicketOperationWithRefreshToken:refreshToken userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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



@end