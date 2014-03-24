
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



@protocol MOZUCustomerNote
@end


/**
	Properties of a note configured for a customer account.
*/
@interface MOZUCustomerNote : JSONModel<MOZUCustomerNote>

/**
The contents of a customer account note.
*/
@property(nonatomic) NSString * content;

/**
Identifier of the customer account note.
*/
@property(nonatomic) NSInteger id;

/**
Identifier and datetime stamp information recorded when creating or updating a resource entity. System-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

