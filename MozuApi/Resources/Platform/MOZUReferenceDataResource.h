
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

#import "MOZUTopLevelDomainCollection.h"
#import "MOZUContentLocaleCollection.h"
#import "MOZUBehaviorCollection.h"
#import "MOZUCountryCollection.h"
#import "MOZUTimeZoneCollection.h"
#import "MOZUBehaviorCategoryCollection.h"
#import "MOZUBehaviorCategory.h"
#import "MOZUCurrencyCollection.h"
#import "MOZUAddressSchemaCollection.h"
#import "MOZUBehavior.h"
#import "MOZUUnitOfMeasureCollection.h"
#import "MOZUAddressSchema.h"


@interface MOZUReferenceDataResource : NSObject


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a specific address schema based on the country code provided. This operation allows the creation of custom shipping and billing address fields.
@param countryCode 2 letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/

- (void)addressSchemaWithCountryCode:(NSString *)countryCode completionHandler:(void(^)(MOZUAddressSchema *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of address schemas that the system supports.
*/

- (void)addressSchemasWithCompletionHandler:(void(^)(MOZUAddressSchemaCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
***Always private and should not be published.***
@param behaviorId ***Always private and should not be published.***
*/

- (void)behaviorWithBehaviorId:(NSInteger)behaviorId completionHandler:(void(^)(MOZUBehavior *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
***Always private and should not be published.***
*/

- (void)behaviorCategoriesWithCompletionHandler:(void(^)(MOZUBehaviorCategoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
***Always private and should not be published.***
@param categoryId ***Always private and should not be published.***
*/

- (void)behaviorCategoryWithCategoryId:(NSInteger)categoryId completionHandler:(void(^)(MOZUBehaviorCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
***Always private and should not be published.***
@param userType 
*/

- (void)behaviorsWithUserType:(NSString *)userType completionHandler:(void(^)(MOZUBehaviorCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of content locales that the system supports. The content locales indicate the language used and the country where the language is used. Just because the system supports the content locale does not mean that the site or site group supports the language. For example,currently only "en-US" is supported.
*/

- (void)contentLocalesWithCompletionHandler:(void(^)(MOZUContentLocaleCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of countries that the system supports.
*/

- (void)countriesWithCompletionHandler:(void(^)(MOZUCountryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of currencies that the system supports.
*/

- (void)currenciesWithCompletionHandler:(void(^)(MOZUCurrencyCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of time zones that the system supports.
*/

- (void)timeZonesWithCompletionHandler:(void(^)(MOZUTimeZoneCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of top-level Internet domains that the system supports.
*/

- (void)topLevelDomainsWithCompletionHandler:(void(^)(MOZUTopLevelDomainCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the entire list of units of measure that the system supports.
@param filter A set of filter expressions representing the search parameter syntax when filtering results of a query: eq=equals, ne=not equals, gt=greater than, lt = less than, ge = greater than or equals, le = less than or equals, sw = starts with, or cont = contains. <b>For example: filter=categoryId+eq+12</b>
*/

- (void)unitsOfMeasureWithFilter:(NSString *)filter completionHandler:(void(^)(MOZUUnitOfMeasureCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end