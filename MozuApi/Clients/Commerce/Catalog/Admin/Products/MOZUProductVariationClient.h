
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
#import "MOZUAuthTicket.h"
#import "MOZUProductVariation.h"
#import "MOZUProductVariationPagedCollection.h"
#import "MOZUProductVariationCollection.h"


@interface MOZUProductVariationClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a product variation based on the supplied product code and variation key.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/

+(MOZUClient*)clientForGetProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a list of the product variations configured for the specified product code.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+(MOZUClient*)clientForGetProductVariationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;


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
Modifies the collection of variations for the specified product code. Because this PUT replaces the existing resource, supply all information necessary to maintain for the product variation.
@param productVariations Wrapper for the collection of variations configured for the specified product code.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForUpdateProductVariationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productVariations:(MOZUProductVariationCollection*)productVariations productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Modifies the details of a variation, based on the supplied variation key, for the specified product code.
@param productVariation Wrapper for the properties of the specified product variation.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/

+(MOZUClient*)clientForUpdateProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productVariation:(MOZUProductVariation*)productVariation productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a variation, based on the supplied variation key, for the specified product code.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param variationKey System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/

+(MOZUClient*)clientForDeleteProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims;



@end