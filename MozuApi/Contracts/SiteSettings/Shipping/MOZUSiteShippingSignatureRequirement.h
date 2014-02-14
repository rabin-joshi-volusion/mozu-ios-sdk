
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



@protocol MOZUSiteShippingSignatureRequirement
@end


/**
	Properties of the shipment signature requirements for the specified site.
*/
@interface MOZUSiteShippingSignatureRequirement : JSONModel<MOZUSiteShippingSignatureRequirement>

/**
If true, this site requires signatures on shipments for orders that exceed the minimum value threshold.
*/
@property(nonatomic) NSNumber* isSignatureRequired;

/**
The minimum order amount that requires a signature on shipments. For example, if you want to require customer signatures on all orders over $5,000, the MinimumValueThreshold would be 5001.
*/
@property(nonatomic) NSDecimalNumber* minimumValueThreshold;

@end

