
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUCommercePackage.h"


@interface MOZUCommerceOrdersPackageResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a package of order items.
@param orderId Unique identifier of the order associated with the package to retrieve.
@param packageId Unique identifier of the package to retrieve.
*/

-(void)packageWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a list of the actions available to perform for a package associated with order fulfillment.
@param orderId Unique identifier of the order associated with the package fulfillment.
@param packageId Unique identifier of the package associated with the fulfillment actions to retrieve.
*/

-(void)availablePackageFulfillmentActionsWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the package label image supplied by the carrier.
@param orderId Unique identifier of the order associated with the package label to retrieve.
@param packageId Unique identifier of the package for which to retrieve the label.
*/

-(void)packageLabelWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new physical package of order items.
@param package Properties of the physical package of order items.
@param orderId Unique identifier of the order associated with this package.
*/

-(void)createPackageWithPackage:(MOZUCommercePackage*)package orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a physical package of order items.
@param package Wrapper of properties for the package of order items to update.
@param orderId Unique identifier of the order associated with the package to update.
@param packageId Unique identifier of the package of order items to update.
*/

-(void)updatePackageWithPackage:(MOZUCommercePackage*)package orderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a physical package of items from the specified order.
@param orderId Unique identifier of the order associated with the package to delete.
@param packageId Unique identifier of the package to delete.
*/

-(void)deletePackageWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end