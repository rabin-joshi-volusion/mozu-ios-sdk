
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentListClient.h"
#import "MOZUDocumentListUrl.h"
#import "MozuDocumentList.h"
#import "MozuDocumentListCollection.h"


@implementation MOZUDocumentListClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetDocumentListsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentListURL URLForGetDocumentListsOperationWithPageSize:pageSize startIndex:startIndex];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentListCollection alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetDocumentListOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentListURL URLForGetDocumentListOperationWithDocumentListName:documentListName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentList alloc] initWithString:jsonResult error:nil];
	}

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