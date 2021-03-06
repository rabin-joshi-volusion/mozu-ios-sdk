
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



@protocol MOZUCurrency
@end


/**
	Three-letter currency code that the system supports, which is derived from the ISO 4217 standard. For example, the code "EUR" for the name "Euro Member Countries" is an entry that returns in a list of items.
*/
@interface MOZUCurrency : JSONModel<MOZUCurrency>

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString * code;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

@end

