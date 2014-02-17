
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



@protocol MOZUProductReservation
@end


/**
	A hold placed on product inventory for a particular product so that the quantity specified is set aside and available for purchase during the ordering process.
*/
@interface MOZUProductReservation : JSONModel<MOZUProductReservation>

/**
Identifier of the entity.
*/
@property(nonatomic) NSNumber* id;

/**
Code that identifies the location associated with this product reservation.
*/
@property(nonatomic) NSString* locationCode;

/**
Unique identifier of the order.
*/
@property(nonatomic) NSString* orderId;

/**
The unique identifier of the item in the order.
*/
@property(nonatomic) NSString* orderItemId;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
The quantity of items associated with the product reservation.
*/
@property(nonatomic) NSInteger quantity;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

@end

