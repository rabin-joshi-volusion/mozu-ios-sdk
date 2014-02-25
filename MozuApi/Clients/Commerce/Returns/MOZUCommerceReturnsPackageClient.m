
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsPackageClient.h"
#import "MOZUCommerceReturnsPackageURLComponents.h"
#import "MozuCommercePackage.h"


@implementation MOZUCommerceReturnsPackageClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetPackageOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForGetPackageOperationWithReturnId:returnId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPackageLabelOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForGetPackageLabelOperationWithReturnId:returnId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreatePackageOperationWithBody:(MOZUCommercePackage*)body returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForCreatePackageOperationWithReturnId:returnId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdatePackageOperationWithBody:(MOZUCommercePackage*)body returnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForUpdatePackageOperationWithReturnId:returnId packageId:packageId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeletePackageOperationWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForDeletePackageOperationWithReturnId:returnId packageId:packageId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end