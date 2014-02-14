
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
#import "MOZUProductPropertyValue.h"



@protocol MOZUAdminProductProperty
@end


/**
	Properties of the product property to create such as attribute detail, fully qualified name, and list of product property values.
*/
@interface MOZUAdminProductProperty : JSONModel<MOZUAdminProductProperty>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString* attributeFQN;

/**
The actual values that populate a product property to set in the Admin to appear on the Storefront.
*/
@property(nonatomic) NSArray<MOZUAdminProductPropertyValue>* values;

@end

