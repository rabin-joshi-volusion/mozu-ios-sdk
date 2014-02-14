
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUApplicationVersionClient.h"
#import "MOZUApplicationVersionUrl.h"
#import "MozuFileMetadata.h"
#import "MozuAppDevApplication.h"
#import "MozuPackageCollection.h"
#import "MozuApplicationVersion.h"
#import "MozuFolderMetadata.h"
#import "MozuAppDevPackage.h"
#import "MozuApplicationCollection.h"


@implementation MOZUApplicationVersionClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAllApplicationsOperation userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetAllApplicationsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUApplicationCollection alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetApplicationOperationWithWithApplicationId:(NSNumber*)applicationId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetApplicationOperationWithApplicationId:applicationId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevApplication alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetApplicationVersionOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetApplicationVersionOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUApplicationVersion alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetPackagesOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetPackagesOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPackageCollection alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetPackageOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetPackageOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevPackage alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetPackageItemsMetadataOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetPackageItemsMetadataOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFolderMetadata alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetPackageItemMetadataOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId itempath:(NSString*)itempath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetPackageItemMetadataOperationWithApplicationVersionId:applicationVersionId packageId:packageId itempath:itempath];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetPackageFilesZipOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForGetPackageFilesZipOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddPackageOperationWithWithpackage:((MOZUAppDevPackage*))package applicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForAddPackageOperationWithApplicationVersionId:applicationVersionId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAppDevPackage alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForChangePackageFileNameOrPathOperationWithWithrenameInfo:((MOZURenameInfo*))renameInfo applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForChangePackageFileNameOrPathOperationWithApplicationVersionId:applicationVersionId packageId:packageId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForAddPackageFileOperationWithWithstream:((NSInputStream*))stream applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForAddPackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdatePackageFileOperationWithWithstream:((NSInputStream*))stream applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForUpdatePackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeletePackageFileOperationWithWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUApplicationVersionURL URLForDeletePackageFileOperationWithApplicationVersionId:applicationVersionId packageId:packageId filepath:filepath];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end