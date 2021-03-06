
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

#import "MOZUSearchSuggestionResult.h"
#import "MOZUProductSearchResult.h"


@interface MOZUProductSearchResultResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Searches the categories displayed on the web storefront for products or product options that the shopper types in a search query.
@param facet Individually list the facet fields you want to display in a web storefront product search.
@param facetFieldRangeQuery Display a range facet not specified in a template in a web storefront product search by listing the facet field and the range to display.
@param facetHierDepth If filtering using category facets in a hierarchy, the number of category hierarchy levels to return for the facet. This option is only available for category facets.
@param facetHierPrefix If filtering using category facets in a hierarchy, the parent categories you want to skip in the storefront product search. This parameter is only available for category facets.
@param facetHierValue If filtering using category facets in a hierarchy, the category in the hierarchy to begin faceting on. This parameter is only available for category facets.
@param facetPageSize The number of facet values to return for one or more facets.
@param facetSettings Settings reserved for future facet search functionality on a web storefront product search.
@param facetStartIndex When paging through multiple facets, the startIndex value for each facet.
@param facetTemplate The facet template to use on the storefront. A template displays all facets associated with the template on the web storefront product search. Currently, only category-level facet templates are available.
@param facetTemplateSubset Display a subset of the facets defined in the template specified in facetTemplate parameter.
@param facetValueFilter The facet values to apply to the filter.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param query A query entered for searches and facet range.
@param responseFields Use this field to include those fields which are not included by default.
@param searchSettings 
@param sortBy 
@param startIndex 
*/

- (void)searchWithQuery:(NSString *)query filter:(NSString *)filter facetTemplate:(NSString *)facetTemplate facetTemplateSubset:(NSString *)facetTemplateSubset facet:(NSString *)facet facetFieldRangeQuery:(NSString *)facetFieldRangeQuery facetHierPrefix:(NSString *)facetHierPrefix facetHierValue:(NSString *)facetHierValue facetHierDepth:(NSString *)facetHierDepth facetStartIndex:(NSString *)facetStartIndex facetPageSize:(NSString *)facetPageSize facetSettings:(NSString *)facetSettings facetValueFilter:(NSString *)facetValueFilter sortBy:(NSString *)sortBy pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex searchSettings:(NSString *)searchSettings responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductSearchResult *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Suggests possible search terms as the shopper enters search text.
@param groups 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param query A query entered for searches and facet range.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)suggestWithQuery:(NSString *)query groups:(NSString *)groups pageSize:(NSNumber *)pageSize responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUSearchSuggestionResult *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
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