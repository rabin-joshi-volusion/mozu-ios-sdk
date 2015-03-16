
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
#import "MOZUProductSummary.h"
#import "MOZUItemMeasurements.h"



@protocol MOZURateRequestItem
@end


/**
	Properties of an item for which to calculate a shipping rate.
*/
@interface MOZURateRequestItem : JSONModel<MOZURateRequestItem>

/**
Unique identifier of an item used to calculate or request a shipping rate.
*/
@property(nonatomic) NSString * itemId;

/**
The specified quantity of objects and items. This property is used for numerous object types including products, options, components within a product bundle, cart and order items, returned items, shipping line items, items in a digital product. and items associated with types and reservations.
*/
@property(nonatomic) NSNumber * quantity;

/**
If true, this item must ship separately from other items in a shipment.
*/
@property(nonatomic) NSNumber * shipsByItself;

/**
If Product Summaries are populated, this information will be utilized in Product Rules (e.g. ProductCode eq "ABC" or (Weight.Unit eq "lbs" and Weight.Value ge 50)
*/
@property(nonatomic) NSArray<MOZUProductSummary> *productSummaries;

/**
Product specific dimensions used for shipping, used by product summary and rate request items.  The dimensions can differ between the two uses as a `RateRequestItem `package may contain one or more products.
*/
@property(nonatomic) MOZUItemMeasurements *unitMeasurements;

@end

