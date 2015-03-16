
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
#import "MOZUAdminDiscount.h"
#import "MOZUDiscountLocalizedContent.h"
#import "MOZUDiscountCollection.h"


@interface MOZUDiscountClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of discounts according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

+ (MOZUClient *)clientForGetDiscountsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
Retrieves the localized content specified for the specified discount.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetDiscountContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;

/**
Retrieves the details of a single discount.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;

/**
Generates a random code for a coupon.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGenerateRandomCouponOperationWithResponseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new discount or coupon to apply to a product, category, order, or shipping.
@param body Name of the discount added and applied to a shopping cart and order for a shopper's purchase. 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForCreateDiscountOperationWithBody:(MOZUAdminDiscount *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the localizable content for the specified discount or rename the discount without modifying its other properties.
@param body The container for the language-specific name of the discount. A container exists for each supported language (LocaleCode). This parameter enables you to display the discount name in multiple languages yet manage it as a single discount internally.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateDiscountContentOperationWithBody:(MOZUDiscountLocalizedContent *)body discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;

/**
Updates one or more properties of a defined discount.
@param body Name of the discount added and applied to a shopping cart and order for a shopper's purchase. 
@param discountId Unique identifier of the discount. System-supplied and read only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateDiscountOperationWithBody:(MOZUAdminDiscount *)body discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a discount specified by its discount ID.
@param discountId Unique identifier of the discount. System-supplied and read only.
*/

+ (MOZUClient *)clientForDeleteDiscountOperationWithDiscountId:(NSInteger)discountId;



@end