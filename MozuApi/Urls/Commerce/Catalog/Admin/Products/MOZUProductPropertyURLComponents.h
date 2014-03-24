/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductPropertyURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getProperties
@param productCode Identifies the product for which a list of properties is being retrieved.
*/
+ (MOZUURLComponents *)URLComponentsForGetPropertiesOperationWithProductCode:(NSString *)productCode;

/**
Resource Url Components for getProperty
@param productCode Identifies the product for which a single property is being retrieved.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForGetPropertyOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addProperty
@param productCode The merchant-created code that uniquely identifies the product such as a SKU or item number. Identifies the product for which a new property is created.
*/
+ (MOZUURLComponents *)URLComponentsForAddPropertyOperationWithProductCode:(NSString *)productCode;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateProperty
@param productCode Identifies the product for which a list of properties is being updated.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForUpdatePropertyOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteProperty
@param productCode Identifies the product for which a new property is being deleted.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForDeletePropertyOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN;



@end