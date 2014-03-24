
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
	The paged collection of all top level Internet domains that the system supports including general, USA-specific, infrastructure, and country codes. The Internet Assigned Numbers Authority (IANA) maintains this list.
*/
@interface MOZUTopLevelDomainCollection : JSONModel<MOZUTopLevelDomainCollection>

/**
Container for an array list of properties in a collection.
*/
@property(nonatomic) NSArray *items;

/**
The number of the resource entity items listed in the query collection. Signed 64-bit (8-byte) integer. System-supplied and read-only.
*/
@property(nonatomic) NSInteger totalCount;

@end

