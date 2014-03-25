
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



@protocol MOZUOrderNote
@end


/**
	For a customer, the order note could be a comment or a gift message. For a merchant, the order note is internal only for administrative purposes and not available to the customer.
*/
@interface MOZUOrderNote : JSONModel<MOZUOrderNote>

/**
Unique identifier of the order note.
*/
@property(nonatomic) NSString * id;

/**
The text content of the order note.
*/
@property(nonatomic) NSString * text;

/**
Identifier and datetime stamp information recorded when creating or updating a resource entity. System-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

