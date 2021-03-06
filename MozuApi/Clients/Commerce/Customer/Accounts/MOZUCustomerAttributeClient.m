
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeClient.h"
#import "MOZUCustomerAttributeURLComponents.h"
#import "MozuCustomerAttribute.h"
#import "MozuCustomerAttributeCollection.h"


@implementation MOZUCustomerAttributeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAccountAttributeOperationWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForGetAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAccountAttributesOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForGetAccountAttributesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttributeCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddAccountAttributeOperationWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForAddAccountAttributeOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateAccountAttributeOperationWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForUpdateAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteAccountAttributeOperationWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForDeleteAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end