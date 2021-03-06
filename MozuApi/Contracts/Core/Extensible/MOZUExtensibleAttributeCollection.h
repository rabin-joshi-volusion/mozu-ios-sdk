
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
#import "MOZUExtensibleAttribute.h"



@protocol MOZUExtensibleAttributeCollection
@end


/**
	Array list of customer or order attributes.
*/
@interface MOZUExtensibleAttributeCollection : JSONModel<MOZUExtensibleAttributeCollection>

/**
The number of pages returned based on the startIndex and pageSize values specified. This value is system-supplied and read-only.
*/
@property(nonatomic) NSInteger pageCount;

/**
The number of results to display on each page when creating paged results from a query. The maximum value is 200.
*/
@property(nonatomic) NSInteger pageSize;

@property(nonatomic) NSInteger startIndex;

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) NSInteger totalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUExtensibleAttribute> *items;

@end

