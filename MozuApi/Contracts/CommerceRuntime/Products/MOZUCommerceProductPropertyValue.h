
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



@protocol MOZUCommerceProductPropertyValue
@end


/**
	Values of a product property attribute.
*/
@interface MOZUCommerceProductPropertyValue : JSONModel<MOZUCommerceProductPropertyValue>

/**
Property string value in the language specified in the locale code for the product storefront.
*/
@property(nonatomic) NSString* stringValue;

/**
Value of the product property.
*/
@property(nonatomic) id value;

@end
