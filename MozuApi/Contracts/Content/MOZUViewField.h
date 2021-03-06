
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



@protocol MOZUViewField
@end


/**
	Field within a view of the content.
*/
@interface MOZUViewField : JSONModel<MOZUViewField>

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
Targets represent the object, such as an item to apply discounts (products or orders) or a view field for content. When accessing MZDB APIs for Mongo interactions, targets are the dot notation that links to the source document property. For example, firstitem for the direc level or firstitem.seconditem.thirditem for a deeper property.              
*/
@property(nonatomic) NSString * target;

@end

