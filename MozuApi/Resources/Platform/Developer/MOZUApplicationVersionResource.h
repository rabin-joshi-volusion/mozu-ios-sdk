
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUFileMetadata.h"
#import "MOZUAppDevApplication.h"
#import "MOZUPackageCollection.h"
#import "MOZUApplicationVersion.h"
#import "MOZUFolderMetadata.h"
#import "MOZURenameInfo.h"
#import "MOZUAppDevPackage.h"
#import "MOZUApplicationCollection.h"


@interface MOZUApplicationVersionResource : NSObject


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

*/

- (void)allApplicationsWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUApplicationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationId 
*/

- (void)applicationWithApplicationId:(NSNumber *)applicationId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAppDevApplication *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
*/

- (void)applicationVersionWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUApplicationVersion *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
*/

- (void)packagesWithApplicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUPackageCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
@param packageId 
*/

- (void)packageWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAppDevPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
@param packageId 
*/

- (void)packageItemsMetadataWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFolderMetadata *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
@param itempath 
@param packageId 
*/

- (void)packageItemMetadataWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId itempath:(NSString *)itempath userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFileMetadata *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param applicationVersionId 
@param packageId 
*/

- (void)packageFilesZipWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
@param applicationVersionId 
*/

- (void)addPackageWithBody:(MOZUAppDevPackage *)body applicationVersionId:(NSInteger)applicationVersionId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAppDevPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param body 
@param applicationVersionId 
@param packageId 
*/

- (void)changePackageFileNameOrPathWithBody:(MOZURenameInfo *)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFileMetadata *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param body 
@param applicationVersionId 
@param filepath 
@param packageId 
*/

- (void)addPackageFileWithBody:(NSInputStream *)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString *)filepath userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFileMetadata *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param applicationVersionId 
@param filepath 
@param packageId 
*/

- (void)updatePackageFileWithBody:(NSInputStream *)body applicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString *)filepath userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUFileMetadata *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param applicationVersionId 
@param filepath 
@param packageId 
*/

- (void)deletePackageFileWithApplicationVersionId:(NSInteger)applicationVersionId packageId:(NSInteger)packageId filepath:(NSString *)filepath userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end