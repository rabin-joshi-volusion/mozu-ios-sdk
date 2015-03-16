
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUFacetValue.h"



@protocol MOZUFacetValue
@end


/**
	The value selected for a facet when indexing a product search.
*/
@interface MOZUFacetValue : JSONModel<MOZUFacetValue>

/**
The number of facet results for a product search.
*/
@property(nonatomic) NSInteger count;

/**
Submits the selected facet value as a facet value filter.
*/
@property(nonatomic) NSString * filterValue;

/**
If true, the facet value is applied as a filter in the storefront product search.
*/
@property(nonatomic) NSNumber * isApplied;

/**
Descriptive text used as a label for objects, such as field names, facets, date ranges, contact information, and package information.
*/
@property(nonatomic) NSString * label;

/**
If applicable, the values of any parent category facets in a hierarchy. Hierarchical facets only apply for product categories.
*/
@property(nonatomic) NSString * parentFacetValue;

/**
The maximum value selected or entered for the facet range query.
*/
@property(nonatomic) NSString * rangeQueryValueEnd;

/**
The minimum value selected or entered for the facet range query.
*/
@property(nonatomic) NSString * rangeQueryValueStart;

/**
The value of a property, used by numerous objects within Mozu including facets, attributes, products, localized content, metadata, capabilities (Mozu and third-party), location inventory adjustment, and more. The value may be a string, integer, or double. Validation may be run against the entered and saved values depending on the object type.
*/
@property(nonatomic) NSString * value;

/**
If applicable, the values of any subcategory facets in a hierarchy. Hierarchical facets only apply for product categories.
*/
@property(nonatomic) NSArray<MOZUFacetValue> *childrenFacetValues;

@end

