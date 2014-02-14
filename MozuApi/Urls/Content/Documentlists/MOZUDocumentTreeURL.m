/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentTreeURL.h"

@implementation MOZUDocumentTreeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetTreeDocumentOperationWithDocumentListName:(NSString*)documentListName documentName:(NSString*)documentName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documentTree/{documentName}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentName" : documentName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetTreeDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentName:(NSString*)documentName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documentTree/{documentName}/content";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentName" : documentName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
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

+(MOZUURL*)URLForUpdateTreeDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentName:(NSString*)documentName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documentTree/{documentName}/content?folderPath={folderPath}&folderId={folderId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentName" : documentName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteTreeDocumentContentOperationWithDocumentListName:(NSString*)documentListName documentName:(NSString*)documentName {
	NSString* template = @"/api/content/documentlists/{documentListName}/documentTree/{documentName}/content?folderPath={folderPath}&folderId={folderId}";
	NSDictionary* params = @{
		@"documentListName" : documentListName,
		@"documentName" : documentName,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end