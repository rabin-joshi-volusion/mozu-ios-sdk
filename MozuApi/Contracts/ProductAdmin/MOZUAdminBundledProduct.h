
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
#import "MOZUAdminProductPrice.h"



@protocol MOZUAdminBundledProduct
@end


@interface MOZUAdminBundledProduct : JSONModel<MOZUAdminBundledProduct>

@property(nonatomic) NSString * productCode;

@property(nonatomic) NSString * productName;

@property(nonatomic) NSInteger quantity;

@property(nonatomic) MOZUMeasurement *packageHeight;

@property(nonatomic) MOZUMeasurement *packageLength;

@property(nonatomic) MOZUMeasurement *packageWeight;

@property(nonatomic) MOZUMeasurement *packageWidth;

@property(nonatomic) MOZUAdminProductPrice *price;

@end

