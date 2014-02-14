
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
#import "MOZUAttributeVocabularyValueLocalizedContent.h"



@protocol MOZUProductVariationOption
@end


/**
	Details of a product variation option.
*/
@interface MOZUProductVariationOption : JSONModel<MOZUProductVariationOption>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString* attributeFQN;

/**
The value of an attribute option specified for this product variation.
*/
@property(nonatomic) id value;

/**
Complex type that contains content for a language specified by LocaleCode.
*/
@property(nonatomic) AttributeVocabularyValueLocalizedContent content;

@end

