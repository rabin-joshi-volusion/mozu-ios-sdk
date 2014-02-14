
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
#import "MOZUReturnBundle.h"
#import "MOZUOrderNote.h"
#import "MOZUProduct.h"
#import "MOZUReturnReason.h"



@protocol MOZUReturnItem
@end


/**
	Properties of a previously fulfilled item associated with a return.
*/
@interface MOZUReturnItem : JSONModel<MOZUReturnItem>

/**
Unique identifier of the item in the original completed order. All return items should be associated with a corresponding order item.
*/
@property(nonatomic) NSString* orderItemId;

/**
The total value of the product returned to the merchant for accounting purposes, calculated by multiplying the cost of the item by its quantity returned.
*/
@property(nonatomic) NSDecimalNumber* productLossAmount;

/**
The total tax amount levied on the product loss amount.
*/
@property(nonatomic) NSDecimalNumber* productLossTaxAmount;

/**
The actual quantity received for the return item.
*/
@property(nonatomic) NSInteger quantityReceived;

/**
The quantity of returned items that can be returned to active product stock.
*/
@property(nonatomic) NSInteger quantityRestockable;

/**
The quantity of the item shipped to the shopper in the event of a return item replacement.
*/
@property(nonatomic) NSInteger quantityShipped;

/**
The total value of shipping the returned product to the merchant for accounting purposes, calculated by multiplying the shipping cost of the item by its quantity returned.
*/
@property(nonatomic) NSDecimalNumber* shippingLossAmount;

/**
The total tax amount levied on the shipping loss amount.
*/
@property(nonatomic) NSDecimalNumber* shippingLossTaxAmount;

/**
Properties of a collection of component products that make up a single returned product bundle with its own product code.
*/
@property(nonatomic) NSArray<MOZUReturnBundle>* bundledProducts;

/**
List of merchant-supplied notes associated with the return item.
*/
@property(nonatomic) NSArray<MOZUOrderNote>* notes;

/**
Properties of the product definition associated with the item in the return.
*/
@property(nonatomic) CommerceProduct product;

/**
The list of return reasons for the item and the quantity associated with each return reason.
*/
@property(nonatomic) NSArray<MOZUReturnReason>* reasons;

@end

