
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentListClient.h"
#import "MOZUDocumentListURLComponents.h"
#import "MozuDocumentList.h"
#import "MozuDocumentListCollection.h"


@implementation MOZUDocumentListClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetDocumentListsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentListURLComponents URLComponentsForGetDocumentListsOperationWithPageSize:pageSize startIndex:startIndex];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentListCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetDocumentListOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentListURLComponents URLComponentsForGetDocumentListOperationWithDocumentListName:documentListName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentList alloc] initWithString:jsonResult error:nil];
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