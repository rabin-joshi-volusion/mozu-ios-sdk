
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
#import "MOZUContact.h"



@protocol MOZUFulfillmentInfo
@end


/**
	Properties of the information needed to fulfill an order, whether via in-store pickup or direct shipping.
*/
@interface MOZUFulfillmentInfo : JSONModel<MOZUFulfillmentInfo>

/**
If true, the shipping destination for a shipment is a commercial address.
*/
@property(nonatomic) NSNumber* isDestinationCommercial;

/**
The code associated with the carrier's shipping method service type. Service type codes include a prefix that indicates the carrier. For example: FEDEX_INTERNATIONAL_STANDARD
*/
@property(nonatomic) NSString* shippingMethodCode;

/**
The carrier-supplied name for the shipping service type, such as "UPS Ground" or "2nd Day Air".
*/
@property(nonatomic) NSString* shippingMethodName;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

/**
The contact information of the person receiving the shipment or performing the pickup.
*/
@property(nonatomic) MOZUContact* fulfillmentContact;

@end
