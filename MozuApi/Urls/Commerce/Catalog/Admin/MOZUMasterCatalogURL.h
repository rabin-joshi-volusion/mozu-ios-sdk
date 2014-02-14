/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUMasterCatalogURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getMasterCatalogs
*/
+(MOZUURL*)URLForGetMasterCatalogsOperation;

/**
Resource Url for getMasterCatalog
@param masterCatalogId The unique identifier of the master catalog associated with the entity.
*/
+(MOZUURL*)URLForGetMasterCatalogOperationWithMasterCatalogId:(NSInteger)masterCatalogId;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateMasterCatalog
@param masterCatalogId 
*/
+(MOZUURL*)URLForUpdateMasterCatalogOperationWithMasterCatalogId:(NSInteger)masterCatalogId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end