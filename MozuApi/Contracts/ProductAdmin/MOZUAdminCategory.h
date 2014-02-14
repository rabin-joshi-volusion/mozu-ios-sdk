
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
#import "MOZUAuditInfo.h"
#import "MOZUCategoryLocalizedContent.h"



@protocol MOZUAdminCategory
@end


/**
	A descriptive container in a storefront hierarchy to organize collections of products.
*/
@interface MOZUAdminCategory : JSONModel<MOZUAdminCategory>

@property(nonatomic) NSNumber* catalogId;

/**
The number of children (subcategories, for example) that stem from a parent (top-level category).
*/
@property(nonatomic) NSNumber* childCount;

/**
Identifier of the entity.
*/
@property(nonatomic) NSNumber* id;

/**
If true, the admin product category is displayed in the store. If true, the category is not displayed.
*/
@property(nonatomic) NSNumber* isDisplayed;

/**
Identifier of the parent or top-level category.
*/
@property(nonatomic) NSNumber* parentCategoryId;

/**
The number of products in a list.
*/
@property(nonatomic) NSNumber* productCount;

/**
The numeric value that denotes the place this entity occupies in the order of the entity list.
*/
@property(nonatomic) NSNumber* sequence;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) AuditInfo auditInfo;

/**
Complex type that contains content for a language specified by LocaleCode.
*/
@property(nonatomic) CategoryLocalizedContent content;

@end

