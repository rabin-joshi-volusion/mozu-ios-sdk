
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
#import "MOZUTargetedCategory.h"
#import "MOZUTargetedProduct.h"
#import "MOZUTargetedShippingMethod.h"



@protocol MOZUDiscountTarget
@end


/**
	Specifies what to discount such as the type of discount and which products, categories, or shipping methods are eligible for the discount. Discount types can include the percentage off, specific monetary amount, or free shipping. This parameter also specifies the minimum monetary amount that the order must meet for the discount to apply.
*/
@interface MOZUDiscountTarget : JSONModel<MOZUDiscountTarget>

/**
If true, the target discount applies to all products sold on the storefront.
*/
@property(nonatomic) NSNumber* includeAllProducts;

/**
The type of target to which the discount applies, such as a product or shipping.
*/
@property(nonatomic) NSString* type;

/**
The product categories to which the discount can apply.
*/
@property(nonatomic) NSArray<MOZUTargetedCategory>* categories;

/**
Array list of categories to exclude for this discount.
*/
@property(nonatomic) NSArray<MOZUTargetedCategory>* excludedCategories;

/**
Array list of products to exclude for this discount.
*/
@property(nonatomic) NSArray<MOZUTargetedProduct>* excludedProducts;

/**
The products to which the discount can apply.
*/
@property(nonatomic) NSArray<MOZUTargetedProduct>* products;

/**
The list of shipping method parameters that describe a method including the code, localized content, and audit information.
*/
@property(nonatomic) NSArray<MOZUTargetedShippingMethod>* shippingMethods;

@end

