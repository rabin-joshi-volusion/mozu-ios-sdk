
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAppliedDiscountClient.h"
#import "MOZUAppliedDiscountUrl.h"
#import "MozuOrder.h"


@implementation MOZUAppliedDiscountClient

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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForApplyCouponOperationWithWithOrderId:(NSString*)orderId couponCode:(NSString*)couponCode updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAppliedDiscountURL URLForApplyCouponOperationWithOrderId:orderId couponCode:couponCode updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForRemoveCouponOperationWithWithOrderId:(NSString*)orderId couponCode:(NSString*)couponCode updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAppliedDiscountURL URLForRemoveCouponOperationWithOrderId:orderId couponCode:couponCode updateMode:updateMode version:version];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForRemoveCouponsOperationWithWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAppliedDiscountURL URLForRemoveCouponsOperationWithOrderId:orderId updateMode:updateMode version:version];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	}

	return client;
}



@end