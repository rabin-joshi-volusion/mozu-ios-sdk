
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
#import "MOZUAppliedProductDiscount.h"
#import "MOZUShippingDiscount.h"
#import "MOZUCommerceUnitPrice.h"



@protocol MOZUWishlistItem
@end


/**
	Properties of an item in a shopper wish list.
*/
@interface MOZUWishlistItem : JSONModel<MOZUWishlistItem>

/**
Shopper-entered comments for an item in a wish list.
*/
@property(nonatomic) NSString * comments;

/**
The subtotal of the wishlist item including any applied discount calculations. This property value is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * discountedTotal;

/**
Estimated amount of discounts applied to the item in the wish list, which is system-supplied and read-only.  This property value is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * discountTotal;

/**
The extended total of an item in a wish list. This property value is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * extendedTotal;

/**
The fee total of an item in a wish list. This property value is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * feeTotal;

/**
Unique identifier of an item in a shopper wish list.
*/
@property(nonatomic) NSString * id;

/**
If true, the item in the wish list is a recurring purchase, such as a subscription. This property is reserved for future use and is system-supplied and read only.
*/
@property(nonatomic) NSNumber * isRecurring;

/**
If true, the item in a wish list is subject to sales tax.
*/
@property(nonatomic) NSNumber * isTaxable;

/**
The total sales tax of the item in the wish list. This property value is not calculated at this time, and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * itemTaxTotal;

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString * localeCode;

/**
User-defined string that indicates the priority of an item in a wish list. Possible values are Lowest, Low, Medium, High, and Highest.
*/
@property(nonatomic) NSString * priorityType;

/**
The status of the item that indicates whether an item in a wish list can be purchased. Possible values are "Purchasable" which indicates the item can be purchased, "NotPurchasable" which indicates the item is out of stock or otherwise unavailable, or "Missing" which indicates the item has been deleted from the catalog since it was added to the wish list.
*/
@property(nonatomic) NSString * purchasableStatusType;

/**
The quantity of an item in a shopper wish list.
*/
@property(nonatomic) NSInteger quantity;

/**
The total amount of tax levied against shipping charges for an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * shippingTaxTotal;

/**
The total amount of shipping for an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * shippingTotal;

/**
The subtotal of an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * subtotal;

/**
The taxable total of an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * taxableTotal;

/**
The total of an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * total;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
The properties of the product associated with an item in a wish list.
*/
@property(nonatomic) MOZUCommerceProduct *product;

/**
Array of product discounts applicable to an item in a wish list. This property is not used at this time and is reserved for future functionality.
*/
@property(nonatomic) NSArray<MOZUAppliedProductDiscount> *productDiscounts;

/**
Array of shipping discounts applicable for an item in a wish list. This property is not used at this time and is reserved for future functionality.
*/
@property(nonatomic) NSArray<MOZUShippingDiscount> *shippingDiscounts;

/**
The unit price of an item in a wish list. This property is not calculated at this time and is reserved for future functionality.
*/
@property(nonatomic) MOZUCommerceUnitPrice *unitPrice;

@end

