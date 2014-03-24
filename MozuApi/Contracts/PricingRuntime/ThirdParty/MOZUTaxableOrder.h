
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
#import "MOZUTaxableLineItem.h"
#import "MOZUTaxContext.h"



@protocol MOZUTaxableOrder
@end


@interface MOZUTaxableOrder : JSONModel<MOZUTaxableOrder>

@property(nonatomic) NSString * currencyCode;

@property(nonatomic) NSNumber * handlingFee;

@property(nonatomic) NSDate * orderDate;

@property(nonatomic) NSString * originalDocumentCode;

@property(nonatomic) NSDate * originalOrderDate;

@property(nonatomic) NSNumber * shippingAmount;

@property(nonatomic) NSString * taxRequestType;

@property(nonatomic) NSArray<MOZUTaxableLineItem> *lineItems;

@property(nonatomic) MOZUTaxContext *taxContext;

@end

