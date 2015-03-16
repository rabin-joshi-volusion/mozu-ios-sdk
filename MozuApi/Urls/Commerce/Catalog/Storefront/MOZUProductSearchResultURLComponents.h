/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductSearchResultURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for search
@param query A query entered for searches and facet range.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param facetTemplate The facet template to use on the storefront. A template displays all facets associated with the template on the web storefront product search. Currently, only category-level facet templates are available.
@param facetTemplateSubset Display a subset of the facets defined in the template specified in facetTemplate parameter.
@param facet Individually list the facet fields you want to display in a web storefront product search.
@param facetFieldRangeQuery Display a range facet not specified in a template in a web storefront product search by listing the facet field and the range to display.
@param facetHierPrefix If filtering using category facets in a hierarchy, the parent categories you want to skip in the storefront product search. This parameter is only available for category facets.
@param facetHierValue If filtering using category facets in a hierarchy, the category in the hierarchy to begin faceting on. This parameter is only available for category facets.
@param facetHierDepth If filtering using category facets in a hierarchy, the number of category hierarchy levels to return for the facet. This option is only available for category facets.
@param facetStartIndex When paging through multiple facets, the startIndex value for each facet.
@param facetPageSize The number of facet values to return for one or more facets.
@param facetSettings Settings reserved for future facet search functionality on a web storefront product search.
@param facetValueFilter The facet values to apply to the filter.
@param sortBy 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param startIndex 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForSearchOperationWithQuery:(NSString *)query filter:(NSString *)filter facetTemplate:(NSString *)facetTemplate facetTemplateSubset:(NSString *)facetTemplateSubset facet:(NSString *)facet facetFieldRangeQuery:(NSString *)facetFieldRangeQuery facetHierPrefix:(NSString *)facetHierPrefix facetHierValue:(NSString *)facetHierValue facetHierDepth:(NSString *)facetHierDepth facetStartIndex:(NSString *)facetStartIndex facetPageSize:(NSString *)facetPageSize facetSettings:(NSString *)facetSettings facetValueFilter:(NSString *)facetValueFilter sortBy:(NSString *)sortBy pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex responseFields:(NSString *)responseFields;

/**
Resource Url Components for suggest
@param query A query entered for searches and facet range.
@param groups 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForSuggestOperationWithQuery:(NSString *)query groups:(NSString *)groups pageSize:(NSNumber *)pageSize responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


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