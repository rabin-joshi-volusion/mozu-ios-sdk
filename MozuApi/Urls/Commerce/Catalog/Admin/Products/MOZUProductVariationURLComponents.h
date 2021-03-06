/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductVariationURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getProductVariationLocalizedDeltaPrices
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
+ (MOZUURLComponents *)URLComponentsForGetProductVariationLocalizedDeltaPricesOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey;

/**
Resource Url Components for getProductVariationLocalizedDeltaPrice
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param currencyCode The three character ISO currency code, such as USD for US Dollars.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetProductVariationLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey currencyCode:(NSString *)currencyCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for getProductVariation
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetProductVariationOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey responseFields:(NSString *)responseFields;

/**
Resource Url Components for getProductVariations
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetProductVariationsOperationWithProductCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addProductVariationLocalizedDeltaPrice
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddProductVariationLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateProductVariationLocalizedDeltaPrices
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateProductVariationLocalizedDeltaPricesOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey;

/**
Resource Url Components for updateProductVariationLocalizedDeltaPrice
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param currencyCode The three character ISO currency code, such as USD for US Dollars.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateProductVariationLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey currencyCode:(NSString *)currencyCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateProductVariation
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateProductVariationOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateProductVariations
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateProductVariationsOperationWithProductCode:(NSString *)productCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteProductVariation
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteProductVariationOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey;

/**
Resource Url Components for deleteProductVariationLocalizedDeltaPrice
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
@param currencyCode The three character ISO currency code, such as USD for US Dollars.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteProductVariationLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode variationKey:(NSString *)variationKey currencyCode:(NSString *)currencyCode;



@end