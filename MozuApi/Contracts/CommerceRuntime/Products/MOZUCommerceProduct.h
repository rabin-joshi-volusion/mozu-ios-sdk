
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
#import "MOZUBundledProduct.h"
#import "MOZUCategory.h"
#import "MOZUPackageMeasurements.h"
#import "MOZUProductOption.h"
#import "MOZUProductPrice.h"
#import "MOZUProductProperty.h"



@protocol MOZUCommerceProduct
@end


/**
	Properties of a product set up in admin and added as an item in a cart or order.
*/
@interface MOZUCommerceProduct : JSONModel<MOZUCommerceProduct>

/**
Short description of the product in the language specified in the locale code for the storefront.
*/
@property(nonatomic) NSString* description;

/**
The alternate image description defined for the product, in the language specified in the locale code for the storefront.
*/
@property(nonatomic) NSString* imageAlternateText;

/**
The URL of the image file associated with a product on a storefront.
*/
@property(nonatomic) NSString* imageUrl;

/**
If true, this product cannot ship in a package with other items and must ship in a package by itself.
*/
@property(nonatomic) NSNumber* isPackagedStandAlone;

/**
If true, the product can be purchased or fulfilled at regular intervals such as a monthly billing cycle or a digital or physical subscription.
*/
@property(nonatomic) NSNumber* isRecurring;

/**
If true, the entity is subject to sales tax based on the relevant tax rate.
*/
@property(nonatomic) NSNumber* isTaxable;

/**
The name of the product that appears on the storefront.
*/
@property(nonatomic) NSString* name;

/**
The unique identifier of the product reservation created for this item in the cart or order.
*/
@property(nonatomic) NSNumber* productReservationId;

/**
The product type template associated with the product on the storefront.
*/
@property(nonatomic) NSString* productType;

/**
The usage type that applies to this product, which is Standard (a single product without configurable options), Configurable (a product that includes configurable option attributes), Bundle (a collection of products sold as a single entity), or Component (an invididual product that represents a component in a bundle).
*/
@property(nonatomic) NSString* productUsage;

/**
Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/
@property(nonatomic) NSString* variationProductCode;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
Collection of component products that make up a single product bundle with its own product code, added to a cart or order.
*/
@property(nonatomic) NSArray<MOZUCommerceBundledProduct>* bundledProducts;

/**
The list of all categories associated with the product.
*/
@property(nonatomic) NSArray<MOZUCommerceCategory>* categories;

/**
Dimensions of the packaged product.
*/
@property(nonatomic) PackageMeasurements measurements;

/**
The list of option attributes configured for the product.
*/
@property(nonatomic) NSArray<MOZUCommerceProductOption>* options;

/**
The price of the product that appears on the storefront including any applied discounts.
*/
@property(nonatomic) CommerceProductPrice price;

/**
Collection of property attributes defined for the item in the cart or order.
*/
@property(nonatomic) NSArray<MOZUCommerceProductProperty>* properties;

@end

