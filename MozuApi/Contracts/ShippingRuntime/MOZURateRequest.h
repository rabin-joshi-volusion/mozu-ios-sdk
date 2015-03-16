
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
#import "MOZUCustomAttribute.h"
#import "MOZUAddress.h"
#import "MOZURateRequestItem.h"



@protocol MOZURateRequest
@end


/**
	Properties required to request a shipping rate calculation.
*/
@interface MOZURateRequest : JSONModel<MOZURateRequest>

/**
List of shipping carriers for which to retrieve shipping rate information.
*/
@property(nonatomic) NSArray *carrierIds;

/**
The estimated date and time the shipment will be shipped to the shopper. This calculation is based on product stock, availability, date of order entry, and location.
*/
@property(nonatomic) NSDate * estimatedShipmentDate;

/**
If true, the destination address associated with the shipping rate request is a commercial address.
*/
@property(nonatomic) NSNumber * isDestinationAddressCommercial;

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString * isoCurrencyCode;

/**
The total monetary amount of the order. This amount is used to calculate the shipping rate estimate.
*/
@property(nonatomic) NSNumber * orderTotal;

/**
The shipping methods associated with this request.
*/
@property(nonatomic) NSArray *shippingServiceTypes;

/**
Collection of carrier-specific key-value attribute pairs associated with a shipping carrier. These are required to retrieve a shipping rate request and are returned for the generated shipping label.
*/
@property(nonatomic) NSArray<MOZUCustomAttribute> *customAttributes;

/**
The physical address orders are sent to as a shipping destination. This address may contain multiple lines, city, state/province, country, and zip/postal code. The destination is used to calculate shipping costs.
*/
@property(nonatomic) MOZUAddress *destinationAddress;

/**
Collection list of items. All returned data is provided in an items array. For a failed request, the returned response may be success with an empty item collection. Items are used throughout APIs for carts, wish lists, documents, payments, returns, properties, and more.
*/
@property(nonatomic) NSArray<MOZURateRequestItem> *items;

/**
The physical address from which the order or shipment will ship.
*/
@property(nonatomic) MOZUAddress *originAddress;

@end

