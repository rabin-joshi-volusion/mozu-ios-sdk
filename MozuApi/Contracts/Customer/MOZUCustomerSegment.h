
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



@protocol MOZUCustomerSegment
@end


/**
	The Customer Segment object includes properties of a defined customer segment used to group customer accounts.
*/
@interface MOZUCustomerSegment : JSONModel<MOZUCustomerSegment>

/**
The user-defined code assigned for the customer segment.
*/
@property(nonatomic) NSString * code;

/**
The localized description in text for the object, displayed per the locale code. For example, descriptions are used for product descriptions, attributes, and pre-authorization transaction types.
*/
@property(nonatomic) NSString * theDescription;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSInteger id;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

