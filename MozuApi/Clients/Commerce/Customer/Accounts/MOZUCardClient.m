
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCardClient.h"
#import "MOZUCardUrl.h"
#import "MozuCardCollection.h"
#import "MozuCard.h"


@implementation MOZUCardClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAccountCardsOperationWithWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCardURL URLForGetAccountCardsOperationWithAccountId:accountId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCardCollection alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetAccountCardOperationWithWithAccountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCardURL URLForGetAccountCardOperationWithAccountId:accountId cardId:cardId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddAccountCardOperationWithWithcard:((MOZUCard*))card accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCardURL URLForAddAccountCardOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateAccountCardOperationWithWithcard:((MOZUCard*))card accountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCardURL URLForUpdateAccountCardOperationWithAccountId:accountId cardId:cardId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteAccountCardOperationWithWithAccountId:(NSInteger)accountId cardId:(NSString*)cardId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCardURL URLForDeleteAccountCardOperationWithAccountId:accountId cardId:cardId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end