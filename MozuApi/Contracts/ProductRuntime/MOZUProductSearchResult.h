
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
#import "MOZURuntimeFacet.h"
#import "MOZURuntimeProduct.h"



@protocol MOZUProductSearchResult
@end


/**
	The result of a product search.
*/
@interface MOZUProductSearchResult : JSONModel<MOZUProductSearchResult>

/**
The number of pages returned based on the startIndex and pageSize supplied. Signed 64-bit (8-byte) integer. System-supplied and read-only.
*/
@property(nonatomic) NSInteger pageCount;

/**
Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
*/
@property(nonatomic) NSInteger pageSize;

@property(nonatomic) NSInteger startIndex;

/**
The number of the resource entity items listed in the query collection. Signed 64-bit (8-byte) integer. System-supplied and read-only.
*/
@property(nonatomic) NSInteger totalCount;

/**
The facets applied to index products in the product search result.
*/
@property(nonatomic) NSArray<MOZURuntimeFacet> *facets;

/**
Container for an array list of properties in a collection.
*/
@property(nonatomic) NSArray<MOZURuntimeProduct> *items;

@end

