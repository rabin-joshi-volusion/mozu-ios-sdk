
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
#import "MOZUAdminMasterCatalog.h"
#import "MOZUMasterCatalogCollection.h"


@interface MOZUMasterCatalogResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve the details of all master catalog associated with a tenant.
*/

-(void)masterCatalogsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUMasterCatalogCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieve the details of the master catalog specified in the request.
@param masterCatalogId The unique identifier of the master catalog associated with the entity.
*/

-(void)masterCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminMasterCatalog* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

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

/**
Updates the product publishing mode for the master catalog specified in the request.
@param masterCatalog Properties of the master catalog to update, which consists of the product publishing mode. Possible values are "Pending" which saves product updates in draft mode until they are published, and "Live" which publishes all product changes immediately.
@param masterCatalogId 
*/

-(void)updateMasterCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalog:(MOZUAdminMasterCatalog*)masterCatalog masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminMasterCatalog* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end