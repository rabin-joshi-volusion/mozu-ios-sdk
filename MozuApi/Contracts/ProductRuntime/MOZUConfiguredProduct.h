
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
#import "MOZUDiscount.h"
#import "MOZUProductInventoryInfo.h"
#import "MOZUPackageMeasurements.h"
#import "MOZUProductOption.h"
#import "MOZUProductPrice.h"
#import "MOZUProductPriceRange.h"
#import "MOZUProductPurchasableState.h"



@protocol MOZUConfiguredProduct
@end


/**
	Properties of a created product selection.
*/
@interface MOZUConfiguredProduct : JSONModel<MOZUConfiguredProduct>

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/
@property(nonatomic) NSString* variationProductCode;

/**
List of shipping discounts that can be applied to the configured product.
*/
@property(nonatomic) NSArray<MOZURuntimeDiscount>* availableShippingDiscounts;

/**
Properties of the inventory of the configured product, including the number of items in stock, whether the item appears on the storefront, and whether the item is out of stock or can be back ordered.
*/
@property(nonatomic) MOZURuntimeProductInventoryInfo* inventoryInfo;

/**
Dimensions of the packaged product.
*/
@property(nonatomic) MOZURuntimePackageMeasurements* measurements;

/**
The list of options set up in product admin.
*/
@property(nonatomic) NSArray<MOZURuntimeProductOption>* options;

/**
Price that the merchant intends to sell the product which is not necessarily the list price. This is the price the merchant intends to sell the product if no sale price is present.
*/
@property(nonatomic) MOZURuntimeProductPrice* price;

/**
For products with options that vary the cost of the product, the range between lowest and highest possible price of the product based on the current selection of options.
*/
@property(nonatomic) MOZUProductPriceRange* priceRange;

/**
The current state of the configured product determines whether or not the product is eligible for purchase. Products with options are only purchasable if the shopper has selected all required options. If the product is not ready for purchase, a message lists missing options that are required.
*/
@property(nonatomic) MOZUProductPurchasableState* purchasableState;

@end

