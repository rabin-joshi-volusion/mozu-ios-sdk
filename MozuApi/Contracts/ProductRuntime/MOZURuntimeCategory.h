
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
#import "MOZUCategoryContent.h"
#import "MOZUCategory.h"



@protocol MOZURuntimeCategory
@end


/**
	Properties of the product category that appears on the storefront.
*/
@interface MOZURuntimeCategory : JSONModel<MOZURuntimeCategory>

/**
Unique identifier for the storefront container used to organize products.
*/
@property(nonatomic) NSInteger categoryId;

/**
The numeric value that denotes the place this entity occupies in the order of the entity list.
*/
@property(nonatomic) NSNumber* sequence;

/**
Complex type that contains content for a language specified by LocaleCode.
*/
@property(nonatomic) CategoryContent content;

/**
List of the subcategories in the hierarchy for the specified categories.
*/
@property(nonatomic) NSArray<MOZURuntimeCategory>* childrenCategories;

/**
If applicable, the parent category in the hierarchy for the specified category.
*/
@property(nonatomic) RuntimeCategory parentCategory;

@end

