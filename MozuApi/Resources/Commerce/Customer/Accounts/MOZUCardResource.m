
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCardClient.h"
#import "MOZUCardResource.h"


@interface MOZUCardResource()
@property(readwrite, nonatomic) MOZUApiContext * apiContext;
@end

@implementation MOZUCardResource

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

-(void)accountCardsWithWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCardCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCardClient clientForGetAccountCardsOperationWithWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)accountCardWithWithAccountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCard* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCardClient clientForGetAccountCardOperationWithWithAccountId:accountId cardId:cardId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

-(void)addAccountCardWithWithcard:((MOZUCard*))card accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCard* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCardClient clientForAddAccountCardOperationWithWithcard:card accountId:accountId userClaims:userClaims];
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

-(void)updateAccountCardWithWithcard:((MOZUCard*))card accountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCard* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCardClient clientForUpdateAccountCardOperationWithWithcard:card accountId:accountId cardId:cardId userClaims:userClaims];
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

-(void)deleteAccountCardWithWithAccountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCardClient clientForDeleteAccountCardOperationWithWithAccountId:accountId cardId:cardId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}



@end