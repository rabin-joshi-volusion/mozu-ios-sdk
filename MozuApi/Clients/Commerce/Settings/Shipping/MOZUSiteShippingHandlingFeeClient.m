
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingHandlingFeeClient.h"
#import "MOZUSiteShippingHandlingFeeUrl.h"
#import "MozuSiteShippingHandlingFee.h"


@implementation MOZUSiteShippingHandlingFeeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetOrderHandlingFeeOperation userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURL URLForGetOrderHandlingFeeOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateOrderHandlingFeeOperationWithWithorderHandlingFee:((MOZUSiteShippingHandlingFee*))orderHandlingFee userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURL URLForCreateOrderHandlingFeeOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateOrderHandlingFeeOperationWithWithorderHandlingFee:((MOZUSiteShippingHandlingFee*))orderHandlingFee userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURL URLForUpdateOrderHandlingFeeOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end