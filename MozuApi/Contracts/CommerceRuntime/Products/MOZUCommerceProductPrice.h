
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



@protocol MOZUCommerceProductPrice
@end


/**
	The price of a product that appears on a storefront after any applied discounts.
*/
@interface MOZUCommerceProductPrice : JSONModel<MOZUCommerceProductPrice>

/**
The credit value of the product or bundled product. When the `goodsType `is `DigitalCredit`, this value is populated to indicate the value of the credit. This is used to create store credit in the fulfillment of gift cards.
*/
@property(nonatomic) NSNumber * creditValue;

/**
The manufacturer's suggested retail price for the product. This content may be defined by the supplier.
*/
@property(nonatomic) NSNumber * msrp;

/**
The price the merchant charges for a product on a storefront if no sales price is defined.
*/
@property(nonatomic) NSNumber * price;

/**
The set sale price for a product consisting of a price with a discount already applied.
*/
@property(nonatomic) NSNumber * salePrice;

/**
The override price defined by the tenant for this cart or order item.
*/
@property(nonatomic) NSNumber * tenantOverridePrice;

@end

