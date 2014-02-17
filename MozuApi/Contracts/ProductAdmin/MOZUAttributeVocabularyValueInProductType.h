
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
#import "MOZUAttributeVocabularyValue.h"



@protocol MOZUAttributeVocabularyValueInProductType
@end


/**
	The actual vocabulary value of the attribute that exists as a part of the product type.
*/
@interface MOZUAttributeVocabularyValueInProductType : JSONModel<MOZUAttributeVocabularyValueInProductType>

/**
Sequence of the attribute value within the product type.
*/
@property(nonatomic) NSNumber* order;

/**
The vocabulary value of an attribute defined for a product type.
*/
@property(nonatomic) id value;

/**
Navigates vocabulary value details for an attribute defined for a product type.
*/
@property(nonatomic) MOZUAttributeVocabularyValue* vocabularyValueDetail;

@end
