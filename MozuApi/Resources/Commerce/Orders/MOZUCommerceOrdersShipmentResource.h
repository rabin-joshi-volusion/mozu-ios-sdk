
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

#import "MOZUShipment.h"
#import "MOZUCommerceShippingRate.h"
#import "MOZUPackage.h"


@interface MOZUCommerceOrdersShipmentResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the order shipment specified in the request.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
@param shipmentId Unique identifier of the shipment to retrieve.
*/

- (void)shipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUShipment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the available shipping methods applicable to the order. Typically used to display available shipping method options on the checkout page.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
*/

- (void)availableShipmentMethodsWithOrderId:(NSString *)orderId draft:(NSNumber *)draft completionHandler:(void(^)(NSArray<MOZUCommerceShippingRate> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a shipment from one or more package associated with an order and assign a label and tracking number to an order shipment.
@param body List of unique identifiers for each package associated with this shipment. Not all packages must belong to the same shipment.
@param orderId Unique identifier of the order.
*/

- (void)createPackageShipmentsWithBody:(NSArray *)body orderId:(NSString *)orderId completionHandler:(void(^)(NSArray<MOZUPackage> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the shipment specified in the request.
@param orderId Unique identifier of the order.
@param shipmentId Unique identifier of the shipment to retrieve.
*/

- (void)deleteShipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end