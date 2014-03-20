
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



@protocol MOZUTopLevelDomainCollection
@end


/**
	The paged collection of all top level internet domains that the system supports including general, USA-specific, infrastructure, and country codes. The Internet Assigned Numbers Authority (IANA) maintains this list.
*/
@interface MOZUTopLevelDomainCollection : JSONModel<MOZUTopLevelDomainCollection>

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray *items;

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) long totalCount;

@end

