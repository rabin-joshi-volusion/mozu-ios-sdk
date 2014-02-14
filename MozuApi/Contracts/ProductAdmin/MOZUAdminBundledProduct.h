
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
#import "MOZUMeasurement.h"
#import "MOZUProductPrice.h"



@protocol MOZUAdminBundledProduct
@end


/**
	Properties of a component product in a product bundle. A product bundle can represent either a collection of multiple products sold as a single entity, or a collection of the same product sold as a package. For example, a 10-pack of socks.
*/
@interface MOZUAdminBundledProduct : JSONModel<MOZUAdminBundledProduct>

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString* productCode;

/**
The read-only name of the component in a bundled product.
*/
@property(nonatomic) NSString* productName;

/**
The quantity of an individual component product in a bundle. For example, if a product bundle represents a 10-pack of socks, the quantity value for the bundled product would be 10.
*/
@property(nonatomic) NSInteger quantity;

/**
Height of the bundle package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageHeight;

/**
Length of the bundle package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageLength;

/**
Weight of the bundle package in imperial units of pounds and ounces.
*/
@property(nonatomic) Measurement packageWeight;

/**
Width of the bundle package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageWidth;

/**
The price of the bundled product set for the tenant.
*/
@property(nonatomic) AdminProductPrice price;

@end

