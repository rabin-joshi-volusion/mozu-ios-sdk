
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
#import "MOZUAuditInfo.h"
#import "MOZUBundledProduct.h"
#import "MOZUProductLocalizedContent.h"
#import "MOZUProductExtra.h"
#import "MOZUProductInventoryInfo.h"
#import "MOZUProductOption.h"
#import "MOZUMeasurement.h"
#import "MOZUProductPrice.h"
#import "MOZUProductInCatalogInfo.h"
#import "MOZUProductProperty.h"
#import "MOZUProductPublishingInfo.h"
#import "MOZUProductLocalizedSEOContent.h"
#import "MOZUProductVariationOption.h"



@protocol MOZUAdminProduct
@end


/**
	Properties of a product in a catalog, such as product code, product name, and product price.
*/
@interface MOZUAdminProduct : JSONModel<MOZUAdminProduct>

/**
Merchant-generated product code for the product that any variation stems from.
*/
@property(nonatomic) NSString* baseProductCode;

/**
If true, the product has configurable options. This option means that a product is not purchasable until the shopper selects options that resolve into a product variation. Configurable options for a product are the choices a shopper makes when ordering a product. Size and color are configurable options. System-supplied and read-only.
*/
@property(nonatomic) BOOL hasConfigurableOptions;

/**
If true, this product has stand alone options that a shopper can select which can exist without product variations. Stand alone options. System-supplied and read-only.
*/
@property(nonatomic) BOOL hasStandAloneOptions;

/**
If true, the product must be packaged on its own and should not be jointly packaged with other products.
*/
@property(nonatomic) NSNumber* isPackagedStandAlone;

/**
If true, the product can be purchased or fulfilled at regular intervals such as a monthly billing cycle or a digital or physical subscription. This property is reserved for future functionality and is system-supplied and read only.
*/
@property(nonatomic) NSNumber* isRecurring;

/**
If true, the entity is subject to tax based on the relevant tax rate.
*/
@property(nonatomic) NSNumber* isTaxable;

/**
If true, the entity is valid for the product type provided.
*/
@property(nonatomic) NSNumber* isValidForProductType;

/**
If true, the product in this request is a product variation of a product that has configurable options. System-supplied and read-only.
*/
@property(nonatomic) BOOL isVariation;

/**
The unique identifier of the master catalog associated with the entity.
*/
@property(nonatomic) NSNumber* masterCatalogId;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
Integer that represents the sequential order of the product.
*/
@property(nonatomic) NSNumber* productSequence;

/**
Identifier of the product type.
*/
@property(nonatomic) NSNumber* productTypeId;

/**
The usage type that applies to this product, which is Standard (a single product without configurable options), Configurable (a product that includes configurable option attributes), Bundle (a collection of products sold as a single entity), or Component (an invididual product that represents a component in a bundle).
*/
@property(nonatomic) NSString* productUsage;

/**
Identifier of the shipping class.
*/
@property(nonatomic) NSNumber* shippingClassId;

/**
If the product must be packaged separately, the type of standalone package to use.
*/
@property(nonatomic) NSString* standAlonePackageType;

/**
The universal product code (UPC code) of the product.
*/
@property(nonatomic) NSString* upc;

/**
System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
@property(nonatomic) NSString* variationKey;

/**
List of discounts available for a product.
*/
@property(nonatomic) NSArray<MOZUAdminDiscount>* applicableDiscounts;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) AuditInfo auditInfo;

/**
Properties of a collection of component products that make up a single product bundle with its own product code. Tenants can define product bundles for any product type that supports the Bundle product usage.
*/
@property(nonatomic) NSArray<MOZUAdminBundledProduct>* bundledProducts;

/**
Product content set in product admin.
*/
@property(nonatomic) ProductLocalizedContent content;

/**
The list of extras set up in product admin.
*/
@property(nonatomic) NSArray<MOZUProductExtra>* extras;

/**
Properties of the inventory levels manages for the product.
*/
@property(nonatomic) AdminProductInventoryInfo inventoryInfo;

/**
The list of options set up in product admin.
*/
@property(nonatomic) NSArray<MOZUAdminProductOption>* options;

/**
Height of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageHeight;

/**
Length of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageLength;

/**
Weight of the package in imperial units of pounds and ounces.
*/
@property(nonatomic) Measurement packageWeight;

/**
Width of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageWidth;

@property(nonatomic) AdminProductPrice price;

/**
Properties defined for a product as they appear in its associated catalogs.
*/
@property(nonatomic) NSArray<MOZUProductInCatalogInfo>* productInCatalogs;

/**
The list of product properties to set in product admin.
*/
@property(nonatomic) NSArray<MOZUAdminProductProperty>* properties;

/**
Properties of the product publishing settings for the associated product.
*/
@property(nonatomic) ProductPublishingInfo publishingInfo;

/**
search engine optimized product content.
*/
@property(nonatomic) ProductLocalizedSEOContent seoContent;

/**
The list of product variation options that exist in product admin.
*/
@property(nonatomic) NSArray<MOZUProductVariationOption>* variationOptions;

@end

