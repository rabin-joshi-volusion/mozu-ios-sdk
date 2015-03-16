
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
#import "MOZUAdminMasterCatalog.h"
#import "MOZUMasterCatalogCollection.h"


@interface MOZUMasterCatalogClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve the details of all master catalog associated with a tenant.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetMasterCatalogsOperationWithResponseFields:(NSString *)responseFields;

/**
Retrieve the details of the master catalog specified in the request.
@param masterCatalogId The unique identifier of the master catalog associated with the entity.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetMasterCatalogOperationWithMasterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields;


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
@param body Properties of a master product catalog defined for a tenant. All catalogs and sites associated with a master catalog share product definitions.
@param masterCatalogId 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateMasterCatalogOperationWithBody:(MOZUAdminMasterCatalog *)body masterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end