
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
#import "MOZUProductVariationDeltaPrice.h"
#import "MOZUProductVariationOption.h"



@protocol MOZUProductVariation
@end


/**
	Properties of a specific product variation.
*/
@interface MOZUProductVariation : JSONModel<MOZUProductVariation>

/**
The difference between the base weight for a product and this variation of the product, which can be a positive or negative decimal value.
*/
@property(nonatomic) NSDecimalNumber* deltaWeight;

/**
If true, this variation of this product is marked available for sale.
*/
@property(nonatomic) NSNumber* isActive;

/**
If true, the production variation is no longer available for sale. For example, if a merchant stops selling all "small" shirts, all product variations with the "small" option are set to IsOrphan. System-supplied and read-only.
*/
@property(nonatomic) NSNumber* isOrphan;

/**
If true, one or more product variations are configured for the specified product code.
*/
@property(nonatomic) NSNumber* variationExists;

/**
System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
@property(nonatomic) NSString* variationkey;

/**
Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/
@property(nonatomic) NSString* variationProductCode;

/**
The difference between the base price for the product and this variation of the product, which can be a positive or negative decimal value. For example, if the base price for a t-shirt product is $10, but the XL variation should cost $12, the DeltaPrice value should be "2". However, if the XS variation should only cost $8, the DeltaPrice value should be "-2".
*/
@property(nonatomic) MOZUProductVariationDeltaPrice* deltaPrice;

/**
Wrapper for the list of option attributes configured for the product variation.
*/
@property(nonatomic) NSArray<MOZUProductVariationOption>* options;

@end

