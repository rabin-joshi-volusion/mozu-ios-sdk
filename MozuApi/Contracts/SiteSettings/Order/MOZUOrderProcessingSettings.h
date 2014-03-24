
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



@protocol MOZUOrderProcessingSettings
@end


/**
	Settings that determine how orders are processed and order payments are authorized for the site.
*/
@interface MOZUOrderProcessingSettings : JSONModel<MOZUOrderProcessingSettings>

/**
Determines whether payment authorization occurs when the order is placed or when the order is shipped.
*/
@property(nonatomic) NSString * paymentProcessingFlowType;

@property(nonatomic) BOOL useOverridePriceToCalculateDiscounts;

/**
Identifier and datetime stamp information recorded when creating or updating a resource entity. System-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

