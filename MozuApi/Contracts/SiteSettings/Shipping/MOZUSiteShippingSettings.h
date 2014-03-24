
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
#import "MOZUSiteShippingHandlingFee.h"
#import "MOZUSiteShippingSignatureRequirement.h"



@protocol MOZUSiteShippingSettings
@end


/**
	Properties of the shipping settings configured for an individual site.
*/
@interface MOZUSiteShippingSettings : JSONModel<MOZUSiteShippingSettings>

/**
Identifier and datetime stamp information recorded when creating or updating a resource entity. System-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
The combined price for all items in the order, including all selected options but excluding any discounts.
*/
@property(nonatomic) MOZUSiteShippingHandlingFee *orderHandlingFee;

@property(nonatomic) MOZUSiteShippingSignatureRequirement *signatureRequirement;

@end

