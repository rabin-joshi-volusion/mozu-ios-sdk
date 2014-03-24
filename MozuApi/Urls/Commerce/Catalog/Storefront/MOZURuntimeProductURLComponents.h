/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZURuntimeProductURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getProducts
@param filter A set of filter expressions representing the search parameter syntax when filtering results of a query: eq=equals, ne=not equals, gt=greater than, lt = less than, ge = greater than or equals, le = less than or equals, sw = starts with, or cont = contains. <b>For example: filter=categoryId+eq+12</b>
@param startIndex 
@param pageSize Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
@param sortBy 
*/
+ (MOZUURLComponents *)URLComponentsForGetProductsOperationWithFilter:(NSString *)filter startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy;

/**
Resource Url Components for getProductInventory
@param productCode 
@param locationCodes 
*/
+ (MOZUURLComponents *)URLComponentsForGetProductInventoryOperationWithProductCode:(NSString *)productCode locationCodes:(NSString *)locationCodes;

/**
Resource Url Components for getProduct
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationProductCode Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
@param allowInactive If true, returns an inactive product as part of the query.
@param skipInventoryCheck 
*/
+ (MOZUURLComponents *)URLComponentsForGetProductOperationWithProductCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for configuredProduct
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param includeOptionDetails If true, the response returns details about the product. If false, returns a product summary such as the product name, price, and sale price.
@param skipInventoryCheck 
*/
+ (MOZUURLComponents *)URLComponentsForConfiguredProductOperationWithProductCode:(NSString *)productCode includeOptionDetails:(NSNumber *)includeOptionDetails skipInventoryCheck:(NSNumber *)skipInventoryCheck;

/**
Resource Url Components for validateProduct
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck 
*/
+ (MOZUURLComponents *)URLComponentsForValidateProductOperationWithProductCode:(NSString *)productCode skipInventoryCheck:(NSNumber *)skipInventoryCheck;

/**
Resource Url Components for validateDiscounts
@param productCode 
@param variationProductCode 
@param customerAccountId 
@param allowInactive 
@param skipInventoryCheck 
*/
+ (MOZUURLComponents *)URLComponentsForValidateDiscountsOperationWithProductCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode customerAccountId:(NSNumber *)customerAccountId allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end