
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
#import "MOZUPropertyType.h"



@protocol MOZUProperty
@end


/**
	Provides details and data for properties for content in the site.
*/
@interface MOZUProperty : JSONModel<MOZUProperty>

/**
If true, the attribute can have more than one value.
*/
@property(nonatomic) BOOL isMultiValued;

/**
Indicates if the property, attribute, product option, or product extra is required. If true, the object must have a defined value.
*/
@property(nonatomic) BOOL isRequired;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
The type of a property. These types are associated to properties for documents and document types.
*/
@property(nonatomic) MOZUPropertyType *propertyType;

@end

