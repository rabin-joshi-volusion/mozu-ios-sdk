/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentURL.h"

@implementation MOZUDocumentURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetDocumentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetDocumentsOperationWithDocumentListName:(NSString*)documentListName filter:(NSString*)filter sortBy:(NSString*)sortBy pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents?filter={filter}&sortBy={sortBy}&pageSize={pageSize}&startIndex={startIndex}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"filter" : filter,
		@"sortBy" : sortBy,
		@"pageSize" : pageSize,
		@"startIndex" : startIndex,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateDocumentOperationWithDocumentListName:(NSString*)documentListName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateDocumentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteDocumentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURL*)URLForDeleteDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentId:(NSString*)documentId {
	NSString* template = @"/api/content/documentlists/{documentListName}/documents/{documentId}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentId" : documentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end