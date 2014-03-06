
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAccountClient.h"
#import "MOZUCustomerAccountResource.h"



@interface MOZUCustomerAccountResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUCustomerAccountResource


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

/**
Retrieves a list of customer accounts.
@param fields The fields to include in the response.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param isAnonymous If true, retrieve anonymous shopper accounts in the response.
@param pageSize 
@param q A list of customer account search terms to use in the query when searching across customer name and email. Separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param sortBy 
@param startIndex 
*/

-(void)accountsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter fields:(NSString *)fields q:(NSString *)q qLimit:(NSNumber *)qLimit isAnonymous:(NSNumber *)isAnonymous userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccountCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetAccountsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter fields:fields q:q qLimit:qLimit isAnonymous:isAnonymous userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieve details of a customer account.
@param accountId Unique identifier of the customer account to retrieve.
*/

-(void)accountWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetAccountOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the current login state of the customer account specified in the request.
@param accountId Unique identifier of the customer account.
*/

-(void)loginStateWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new customer account based on the information specified in the request.
@param body Properties of the customer account to update.
*/

-(void)addAccountWithBody:(MOZUCustomerAccount*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Adds a new user login to a defined customer account.
@param body The authentication information for the customer account.
@param accountId Unique identifier of the customer account.
*/

-(void)addLoginToExistingCustomerWithBody:(MOZUCustomerLoginInfo*)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddLoginToExistingCustomerOperationWithBody:body accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates the customer lifetime value of the specified customer account in the event of an order import or a lifetime value calculation error.
@param accountId The unique identifier of the customer account for which to calculate customer lifetime value.
*/

-(void)recomputeCustomerLifetimeValueWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForRecomputeCustomerLifetimeValueOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**
Lock or unlock a customer account.
@param body If true, the customer account is locked from logging in.
@param accountId The unique identifier of the customer account.
*/

-(void)setLoginLockedWithBody:(BOOL)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForSetLoginLockedOperationWithBody:body accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**
Requires the password for the customer account to be changed.
@param body If true, the password for the customer account must be changed.
@param accountId Unique identifier of the customer account.
*/

-(void)setPasswordChangeRequiredWithBody:(BOOL)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForSetPasswordChangeRequiredOperationWithBody:body accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**
Creates a new customer account and logs the user associated with the customer account into the site.
@param body Properties of the customer account to create, including the user authentication information.
*/

-(void)addAccountAndLoginWithBody:(MOZUCustomerAccountAndAuthInfo*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountAndLoginOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Creates multiple customer accounts based on the information specified in the request.
@param body Properties of the customer accounts to create.
*/

-(void)addAccountsWithBody:(NSArray<MOZUCustomerAccountAndAuthInfo>*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccountCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountsOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the current login state of a customer account by providing the customer's email address.
@param emailAddress The email address associated with the customer account.
*/

-(void)loginStateByEmailAddressWithEmailAddress:(NSString *)emailAddress userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateByEmailAddressOperationWithEmailAddress:emailAddress userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the current login state of a customer account by providing the user name associated with the customer account.
@param userName The user name associated with the customer account.
*/

-(void)loginStateByUserNameWithUserName:(NSString *)userName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateByUserNameOperationWithUserName:userName userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Resets the password for a customer account.
@param body Information required to reset the password for a customer account.
*/

-(void)resetPasswordWithBody:(MOZUResetPasswordInfo*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForResetPasswordOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a customer account.
@param body Properties of the customer account to update.
@param accountId Unique identifier of the customer account.
*/

-(void)updateAccountWithBody:(MOZUCustomerAccount*)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForUpdateAccountOperationWithBody:body accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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
Deletes a customer account. A customer account cannot be deleted if any orders exist, past or present.
@param accountId Unique identifier of the customer account to delete.
*/

-(void)deleteAccountWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCustomerAccountClient clientForDeleteAccountOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end