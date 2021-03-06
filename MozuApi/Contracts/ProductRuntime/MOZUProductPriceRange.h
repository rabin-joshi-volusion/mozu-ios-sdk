
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
#import "MOZURuntimeProductPrice.h"



@protocol MOZUProductPriceRange
@end


/**
	For products with options that vary the cost of the product, the range between lowest and highest possible price of the product based on the current selection of options.
*/
@interface MOZUProductPriceRange : JSONModel<MOZUProductPriceRange>

/**
The lowest possible price value for a product with options that vary the cost of the product.
*/
@property(nonatomic) MOZURuntimeProductPrice *lower;

/**
Thw highest possible price value for a product with options that vary the cost of the product.
*/
@property(nonatomic) MOZURuntimeProductPrice *upper;

@end

