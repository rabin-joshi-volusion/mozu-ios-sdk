/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUProductPropertyURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getProperties
@param productCode 
*/
+(MOZUURL*)URLForGetPropertiesOperationWithProductCode:(NSString*)productCode;

/**
Resource Url for getProperty
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURL*)URLForGetPropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url for addProperty
@param productCode 
*/
+(MOZUURL*)URLForAddPropertyOperationWithProductCode:(NSString*)productCode;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateProperty
@param productCode 
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURL*)URLForUpdatePropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url for deleteProperty
@param productCode 
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURL*)URLForDeletePropertyOperationWithProductCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN;



@end