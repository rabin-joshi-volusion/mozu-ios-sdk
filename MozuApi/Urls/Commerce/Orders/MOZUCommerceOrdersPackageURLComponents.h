/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUCommerceOrdersPackageURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getPackage
@param orderId Unique identifier of the order associated with the package to retrieve.
@param packageId Unique identifier of the package to retrieve.
*/
+ (MOZUURLComponents *)URLComponentsForGetPackageOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId;

/**
Resource Url Components for getAvailablePackageFulfillmentActions
@param orderId 
@param packageId 
*/
+ (MOZUURLComponents *)URLComponentsForGetAvailablePackageFulfillmentActionsOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId;

/**
Resource Url Components for getPackageLabel
@param orderId Unique identifier of the order associated with the package label to retrieve.
@param packageId Unique identifier of the package for which to retrieve the label.
*/
+ (MOZUURLComponents *)URLComponentsForGetPackageLabelOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createPackage
@param orderId Unique identifier of the order associated with this package.
*/
+ (MOZUURLComponents *)URLComponentsForCreatePackageOperationWithOrderId:(NSString *)orderId;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updatePackage
@param orderId Unique identifier of the order associated with the package to update.
@param packageId Unique identifier of the package of order items to update.
*/
+ (MOZUURLComponents *)URLComponentsForUpdatePackageOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deletePackage
@param orderId Unique identifier of the order associated with the package to delete.
@param packageId Unique identifier of the package to delete.
*/
+ (MOZUURLComponents *)URLComponentsForDeletePackageOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId;



@end