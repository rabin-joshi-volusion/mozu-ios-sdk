
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



@protocol MOZUAdminProductPrice
@end


/**
	The price of the product in the specified currency code (USD). This price can either be the sale price or the price for which the merchang intends to sell the product.
*/
@interface MOZUAdminProductPrice : JSONModel<MOZUAdminProductPrice>

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString* isoCurrencyCode;

/**
Price that the merchant intends to sell the product which is not necessarily the list price. This is the price the merchant intends to sell the product if no sale price is present.
*/
@property(nonatomic) NSDecimalNumber* price;

/**
Price of the product with a discount already applied which the merchant intends to sell the product.
*/
@property(nonatomic) NSDecimalNumber* salePrice;

@end

