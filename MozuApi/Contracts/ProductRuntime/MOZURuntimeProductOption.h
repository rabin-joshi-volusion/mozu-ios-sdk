
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
#import "MOZUAttributeDetail.h"
#import "MOZUProductOptionValue.h"



@protocol MOZURuntimeProductOption
@end


/**
	Represents configurable options that a shopper can choose when ordering a product, such as a t-shirt color and size.
*/
@interface MOZURuntimeProductOption : JSONModel<MOZURuntimeProductOption>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString* attributeFQN;

/**
If true, the product attribute or option has multiple values.
*/
@property(nonatomic) NSNumber* isMultiValue;

/**
If true, the entity is required for the request to return a valid response.
*/
@property(nonatomic) NSNumber* isRequired;

/**
Details of the product option attribute.
*/
@property(nonatomic) AttributeDetail attributeDetail;

/**
List of possible values for a product option attribute.
*/
@property(nonatomic) NSArray<MOZURuntimeProductOptionValue>* values;

@end

