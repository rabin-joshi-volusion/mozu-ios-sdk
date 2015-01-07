
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUListViewClient.h"
#import "MOZUListViewURLComponents.h"
#import "MozuListView.h"
#import "MozuEntityContainerCollection.h"
#import "MozuEntityCollection.h"
#import "MozuEntityContainer.h"
#import "MozuListViewCollection.h"


@implementation MOZUListViewClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetViewEntityOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName entityId:(NSString *)entityId responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetViewEntityOperationWithEntityListFullName:entityListFullName viewName:viewName entityId:entityId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}

+ (MOZUClient *)clientForGetViewEntitiesOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetViewEntitiesOperationWithEntityListFullName:entityListFullName viewName:viewName pageSize:pageSize startIndex:startIndex filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetViewEntityContainerOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName entityId:(NSString *)entityId responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetViewEntityContainerOperationWithEntityListFullName:entityListFullName viewName:viewName entityId:entityId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityContainer alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetViewEntityContainersOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetViewEntityContainersOperationWithEntityListFullName:entityListFullName viewName:viewName pageSize:pageSize startIndex:startIndex filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityContainerCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetEntityListViewOperationWithEntityListFullName:entityListFullName viewName:viewName responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUListView alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetEntityListViewsOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForGetEntityListViewsOperationWithEntityListFullName:entityListFullName responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUListViewCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateEntityListViewOperationWithBody:(MOZUListView *)body entityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForCreateEntityListViewOperationWithEntityListFullName:entityListFullName responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUListView alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateEntityListViewOperationWithBody:(MOZUListView *)body entityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName responseFields:(NSString *)responseFields {
	id url = [MOZUListViewURLComponents URLComponentsForUpdateEntityListViewOperationWithEntityListFullName:entityListFullName viewName:viewName responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUListView alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName {
	id url = [MOZUListViewURLComponents URLComponentsForDeleteEntityListViewOperationWithEntityListFullName:entityListFullName viewName:viewName];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end