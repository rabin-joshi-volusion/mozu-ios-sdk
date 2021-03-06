
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
#import "MOZUAdminProductOptionValue.h"



@protocol MOZUAdminProductOption
@end


/**
	Properties of the product option to create such as attribute detail, fully qualified name, and list of product option values.
*/
@interface MOZUAdminProductOption : JSONModel<MOZUAdminProductOption>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString * attributeFQN;

/**
List of value data for objects.
*/
@property(nonatomic) NSArray<MOZUAdminProductOptionValue> *values;

@end

