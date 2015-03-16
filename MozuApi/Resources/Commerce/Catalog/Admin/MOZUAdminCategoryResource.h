
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

#import "MOZUAdminCategory.h"
#import "MOZUAdminCategoryPagedCollection.h"
#import "MOZUAdminCategoryCollection.h"


@interface MOZUAdminCategoryResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of categories according to any specified filter criteria and sort options.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)categoriesWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminCategoryPagedCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the list of subcategories within a category.
@param categoryId Unique identifier of the category to modify.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)childCategoriesWithCategoryId:(NSInteger)categoryId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminCategoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of a single category.
@param categoryId Unique identifier of the category to modify.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)categoryWithCategoryId:(NSInteger)categoryId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new category to the site's category hierarchy. Specify a ParentCategoryID to determine where to place the category in the hierarchy. If no ParentCategoryID is specified, the new category is a top-level category.
@param body A descriptive container that groups products. A category is merchant defined with associated products and discounts as configured. GThe storefront displays products in a hierarchy of categories. As such, categories can include a nesting of sub-categories to organize products and product options per set guidelines such as color, brand, material, and size.
@param incrementSequence If true, when adding a new product category, set the sequence number of the new category to an increment of one integer greater than the maximum available sequence number across all product categories. If false, set the sequence number to zero.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addCategoryWithBody:(MOZUAdminCategory *)body incrementSequence:(NSNumber *)incrementSequence responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the properties of a defined category or move it to another location in the category hierarchy. Because this operation replaces the defined resource,include all the information to maintain for the category in the request.
@param body A descriptive container that groups products. A category is merchant defined with associated products and discounts as configured. GThe storefront displays products in a hierarchy of categories. As such, categories can include a nesting of sub-categories to organize products and product options per set guidelines such as color, brand, material, and size.
@param cascadeVisibility If true, when changing the display option for the category, change it for all subcategories also. Default: False.
@param categoryId Unique identifier of the category to modify.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateCategoryWithBody:(MOZUAdminCategory *)body categoryId:(NSInteger)categoryId cascadeVisibility:(NSNumber *)cascadeVisibility responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the category specified by its category ID.
@param cascadeDelete If true, also delete all subcategories associated with the specified category.
@param categoryId Unique identifier of the category to modify.
*/

- (void)deleteCategoryByIdWithCategoryId:(NSInteger)categoryId cascadeDelete:(NSNumber *)cascadeDelete completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end