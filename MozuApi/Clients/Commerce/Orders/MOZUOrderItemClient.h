
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
#import "MOZUOrder.h"
#import "MOZUOrderItem.h"
#import "MOZUAppliedDiscount.h"
#import "MOZUOrderItemCollection.h"


@interface MOZUOrderItemClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a single order item.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId draft:(NSNumber *)draft responseFields:(NSString *)responseFields;

/**
Retrieves the details of all items in an order.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetOrderItemsOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new item to a defined order.
@param body The details associated with a specific item in an order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForCreateOrderItemOperationWithBody:(MOZUOrderItem *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the discount applied to an item in an order.
@param body Properties of all applied discounts for an associated cart, order, or product. 
@param discountId Unique identifier of the discount. System-supplied and read only.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForUpdateOrderItemDiscountOperationWithBody:(MOZUAppliedDiscount *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId discountId:(NSInteger)discountId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Updates the item fulfillment information for the order specified in the request.
@param body The details associated with a specific item in an order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForUpdateItemFulfillmentOperationWithBody:(MOZUOrderItem *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Override the price of an individual product on a line item in the specified order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param price The override price to specify for this item in the specified order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForUpdateItemProductPriceOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId price:(NSNumber *)price updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Update the quantity of an item in an order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param quantity The number of cart items in the shopper's active cart.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForUpdateItemQuantityOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId quantity:(NSInteger)quantity updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a previously added item from a defined order.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+ (MOZUClient *)clientForDeleteOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version;



@end