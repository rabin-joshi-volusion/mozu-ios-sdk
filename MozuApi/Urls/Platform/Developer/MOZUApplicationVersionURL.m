/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUApplicationVersionURL.h"

@implementation MOZUApplicationVersionURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetAllApplicationsOperation {
	NSString* template = @"/api/platform/developer/applications/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetApplicationOperationWithApplicationId:(NSNumber*)applicationId {
	NSString* template = @"/api/platform/developer/applications/{applicationId}";
	NSDictionary* params = @{
		@"applicationId" : applicationId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetApplicationVersionOperationWithApplicationVersionId:(NSInteger)applicationVersionId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetPackagesOperationWithApplicationVersionId:(NSInteger)applicationVersionId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetPackageOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetPackageItemsMetadataOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetPackageItemMetadataOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId itempath:(NSString*)itempath {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files/?itemPath={itempath}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
		@"itempath" : itempath,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForGetPackageFilesZipOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/zip";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddPackageOperationWithApplicationVersionId:(NSInteger)applicationVersionId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForChangePackageFileNameOrPathOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files/change-name-or-path";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+(MOZUURL*)URLForAddPackageFileOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files?filePath={filepath}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
		@"filepath" : filepath,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdatePackageFileOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files?filePath={filepath}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
		@"filepath" : filepath,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeletePackageFileOperationWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString*)filepath {
	NSString* template = @"/api/platform/developer/applications/applicationVersions/{applicationVersionId}/packages/{packageId}/files?filePath={filepath}";
	NSDictionary* params = @{
		@"applicationVersionId" : @(applicationVersionId),
		@"packageId" : @(packageId),
		@"filepath" : filepath,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}



@end