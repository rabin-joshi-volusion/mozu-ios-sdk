
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
#import "MOZUCurrencyAmount.h"



@protocol MOZUCommerceSummary
@end


/**
	Properties of the commerce summary associated with a customer account, which includes details about the shopper's most recent order, wish lists, and total order value over time.
*/
@interface MOZUCommerceSummary : JSONModel<MOZUCommerceSummary>

/**
The date and time the shopper last submitted an order for any site associated with the tenant.
*/
@property(nonatomic) NSDate* lastOrderDate;

/**
The total number of order the shopper submitted across all sites associated with the tenant.
*/
@property(nonatomic) NSInteger orderCount;

/**
The number of visits to a site associated with a customer account.
*/
@property(nonatomic) NSInteger visitsCount;

/**
The number of wish lists associated with a customer account. This number represents the total number of a shopper's wish lists across all sites associated with a tenant.
*/
@property(nonatomic) NSInteger wishlistCount;

/**
The aggregate total amount of all orders the shopper submitted, across all sites associated with the tenant.
*/
@property(nonatomic) MOZUCurrencyAmount* totalOrderAmount;

@end
