
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
#import "MOZUCommerceProduct.h"
#import "MOZUAppliedLineItemProductDiscount.h"
#import "MOZUAppliedLineItemShippingDiscount.h"
#import "MOZUCommerceUnitPrice.h"



@protocol MOZUOrderItem
@end


/**
	The details associated with a specific item in an order.
*/
@interface MOZUOrderItem : JSONModel<MOZUOrderItem>

/**
The subtotal of the cart, order, and wishlist items, including any applied discount calculations. Wishlist subtotals may change depending on the length of time, available discounts, and stock amounts of products at the time of review by shoppers.
*/
@property(nonatomic) NSNumber * discountedTotal;

/**
Estimated amount of discounts applied to all items in the carts and orders. System-supplied and read-only. This value will be available at the wish list, cart item, order item, and wish list item level at a later time.
*/
@property(nonatomic) NSNumber * discountTotal;

/**
Duty or Tariff for this item
*/
@property(nonatomic) NSNumber * dutyAmount;

/**
Represents the total price of the cart item extended to the shopper. This begins with the Unit Price, then uses any of the following prices if they are defined, in the following order: Override Amount, Sale Amount, List Amount. This value is not calculated for wish lists at this time.
*/
@property(nonatomic) NSNumber * extendedTotal;

/**
The monetary sum of all fees incurred in the cart, order, line item in a cart, or line item in an order. This value is not calculated for wish lists at this time.
*/
@property(nonatomic) NSNumber * feeTotal;

/**
The code that identifies the location used to fulfill the cart/cart item or order/order item. This code can include physical store locations for in-store pickup, warehouse locations providing the products for shipment, or the location for the digital file(s).
*/
@property(nonatomic) NSString * fulfillmentLocationCode;

/**
The method used to fulfill this cart or order item. The method includes direct ship or in-store pickup. The available methods depend on the supported fulfillment types for the product. 
*/
@property(nonatomic) NSString * fulfillmentMethod;

/**
The combined price for all handling costs calculated together for shipped orders, not for digital or in-store pickup. This includes all handling costs per the product line items and options, excluding taxes and discounts. 
*/
@property(nonatomic) NSNumber * handlingAmount;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSString * id;

/**
Indicates if the product in a cart, order, or wish list is purchased on a recurring schedule. If true, the item can be purchased or fulfilled at regular intervals, such as a monthly billing cycle. For example, digital or physical product subscriptions are recurring cart items. This property is not used at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * isRecurring;

/**
Indicates if the item is subject to taxation, used by products, options, extras, cart and order items, line items, and wish lists. If true, the entity is subject to tax based on the relevant tax rate and rules.
*/
@property(nonatomic) NSNumber * isTaxable;

/**
The total amount of calculated tax for items, used by carts, orders, and wish lists.
*/
@property(nonatomic) NSNumber * itemTaxTotal;

/**
The line id assigned to the order item. Visible only in the Admin, this is set from the Admin or in CommerceRuntime when a cart is converted to an order.
*/
@property(nonatomic) NSNumber * lineId;

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString * localeCode;

/**
The unique identifier of the item when it was applied to a cart, prior to checkout, when the cart became an order.
*/
@property(nonatomic) NSString * originalCartItemId;

/**
The specified quantity of objects and items. This property is used for numerous object types including products, options, components within a product bundle, cart and order items, returned items, shipping line items, items in a digital product. and items associated with types and reservations.
*/
@property(nonatomic) NSInteger quantity;

/**
The total amount of tax incurred on the shipping charges in the cart and order. This property is not calculated at this time for wish lists.
*/
@property(nonatomic) NSNumber * shippingTaxTotal;

/**
The calculated total shipping amount estimated for carts or orders, including tax. This amount is not calculated for wish lists at this time.
*/
@property(nonatomic) NSNumber * shippingTotal;

/**
Estimated amount of the cart or order without sales tax, shipping costs, and other fees. This amount is not calculated for wish lists at this time.
*/
@property(nonatomic) NSNumber * subtotal;

/**
The monetary amount of an item in the cart that is subject to tax. This amount typically represents the line item subtotal before applied discounts for an order.
*/
@property(nonatomic) NSNumber * taxableTotal;

/**
Total is used to indicate the monetary, estimated total amount of the cart or order, including items, sales tax, shipping costs, and other fees. Totals are not estimated for wish lists at this time.
*/
@property(nonatomic) NSNumber * total;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Custom data for a given vendor set within the commerce process.
*/
@property(nonatomic) NSObject * data;

/**
The properties of a product, referenced and used by carts, orders, wish lists, and returns.
*/
@property(nonatomic) MOZUCommerceProduct *product;

/**
The applicable product discount for an associated cart, order, or wish list. 
*/
@property(nonatomic) MOZUAppliedLineItemProductDiscount *productDiscount;

/**
List of product-level discounts projected to apply to a cart, order, or wish list.
*/
@property(nonatomic) NSArray<MOZUAppliedLineItemProductDiscount> *productDiscounts;

/**
List of shipping discounts projected to apply to carts, orders, and wish lists and items at checkout.
*/
@property(nonatomic) NSArray<MOZUAppliedLineItemShippingDiscount> *shippingDiscounts;

/**
Properties of the price per unit of a product, associated with cart and order items. This price is not used for wish lists at this time.
*/
@property(nonatomic) MOZUCommerceUnitPrice *unitPrice;

@end

