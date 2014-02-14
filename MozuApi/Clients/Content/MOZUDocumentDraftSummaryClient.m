
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentDraftSummaryClient.h"
#import "MOZUDocumentDraftSummaryUrl.h"
#import "MozuDocumentDraftSummaryPagedCollection.h"


@implementation MOZUDocumentDraftSummaryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForListDocumentDraftSummariesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex documentLists:(NSString*)documentLists userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentDraftSummaryURL URLForListDocumentDraftSummariesOperationWithPageSize:pageSize startIndex:startIndex documentLists:documentLists];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentDraftSummaryPagedCollection alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteDocumentDraftsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentIds:((NSString*))documentIds documentLists:(NSString*)documentLists userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentDraftSummaryURL URLForDeleteDocumentDraftsOperationWithDocumentLists:documentLists];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForPublishDocumentsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentIds:((NSString*))documentIds documentLists:(NSString*)documentLists userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentDraftSummaryURL URLForPublishDocumentsOperationWithDocumentLists:documentLists];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end