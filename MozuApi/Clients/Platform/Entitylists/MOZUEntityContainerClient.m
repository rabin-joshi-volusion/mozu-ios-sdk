
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEntityContainerClient.h"
#import "MOZUEntityContainerURLComponents.h"
#import "MozuEntityContainer.h"
#import "MozuEntityContainerCollection.h"


@implementation MOZUEntityContainerClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetEntityContainerOperationWithEntityListFullName:(NSString *)entityListFullName identifier:(NSString *)identifier responseFields:(NSString *)responseFields {
	id url = [MOZUEntityContainerURLComponents URLComponentsForGetEntityContainerOperationWithEntityListFullName:entityListFullName identifier:identifier responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityContainer alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetEntityContainersOperationWithEntityListFullName:(NSString *)entityListFullName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields {
	id url = [MOZUEntityContainerURLComponents URLComponentsForGetEntityContainersOperationWithEntityListFullName:entityListFullName pageSize:pageSize startIndex:startIndex filter:filter sortBy:sortBy responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityContainerCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end