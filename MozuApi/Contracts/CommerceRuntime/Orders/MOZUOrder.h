
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
#import "MOZUAdjustment.h"
#import "MOZUOrderAttribute.h"
#import "MOZUAuditInfo.h"
#import "MOZUBillingInfo.h"
#import "MOZUChangeMessage.h"
#import "MOZUFulfillmentInfo.h"
#import "MOZUOrderItem.h"
#import "MOZUOrderNote.h"
#import "MOZUAppliedDiscount.h"
#import "MOZUCommercePackage.h"
#import "MOZUPayment.h"
#import "MOZUPickup.h"
#import "MOZUShipment.h"
#import "MOZUShippingDiscount.h"
#import "MOZUShopperNotes.h"
#import "MOZUOrderValidationResult.h"



@protocol MOZUOrder
@end


/**
	Properties of an order, including its components.
*/
@interface MOZUOrder : JSONModel<MOZUOrder>

/**
The date and time the order was accepted by the tenant.
*/
@property(nonatomic) NSDate * acceptedDate;

@property(nonatomic) NSNumber * acceptsMarketing;

/**
The amount of the order the shopper can receive in the event of a return. This amount represents the amount captured at the time the order was submitted, not when the order was returned.
*/
@property(nonatomic) NSNumber * amountAvailableForRefund;

/**
The total amount of the order not currently associated with a payment. The shopper must create one or more payments to satisfy this amount before the order can be fully paid.
*/
@property(nonatomic) NSNumber * amountRemainingForPayment;

/**
The available order, payment, and shipment actions a user can perform for the order.
*/
@property(nonatomic) NSArray *availableActions;

/**
Date when the order was cancelled. System-supplied and read-only.
*/
@property(nonatomic) NSDate * cancelledDate;

/**
Code that identifies the channel associated with the site where the order was submitted.
*/
@property(nonatomic) NSString * channelCode;

/**
Date when the order was closed. Closed order is an order that has been processed and the items shipped. System-supplied and read-only.
*/
@property(nonatomic) NSDate * closedDate;

/**
Array list of coupon codes associated with an order submitted using an external system. Mozu populates this list during the order import process.
*/
@property(nonatomic) NSArray *couponCodes;

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString * currencyCode;

/**
Numeric identifer of the customer account.
*/
@property(nonatomic) NSNumber * customerAccountId;

/**
The type of interaction the shopper used to submit the order. Possible values are Website, Call, Store, or Unknown.
*/
@property(nonatomic) NSString * customerInteractionType;

/**
The tax identification number (TIN) of the customer who submitted the order. If the customer who submitted the order has a customer account defined for the tenant, the system sets this value when the order is submitted.
*/
@property(nonatomic) NSString * customerTaxId;

/**
The aggregate total for all line items in the order, including costs associated with shopper-defined options or extras and any applied discounts.
*/
@property(nonatomic) NSNumber * discountedSubtotal;

/**
The subtotal of the order including any applied discount calculations.
*/
@property(nonatomic) NSNumber * discountedTotal;

/**
Estimated amount of discounts applied to all items in the order, which is system-supplied and read-only.
*/
@property(nonatomic) NSNumber * discountTotal;

/**
The email address of the specified user or the email address associated with the specified entity.
*/
@property(nonatomic) NSString * email;

/**
The date when the order will no longer be active or considered abandoned. For example, if a guest or anonymous shopper has 14 days of inactivity, the order is considered abandoned after that period of inactivity. An order never expires for shoppers who are logged into their account. Date in UTC Date/Time. System-supplied and read-only.
*/
@property(nonatomic) NSDate * expirationDate;

/**
Unique identifier used by an external program to identify a Mozu order.
*/
@property(nonatomic) NSString * externalId;

/**
The monetary sum of all fees incurred in the order.
*/
@property(nonatomic) NSNumber * feeTotal;

/**
The current fulfillment status of the order, which is "Fulfilled," "NotFulfilled," or "PartiallyFulfilled." The order is considered fulfilled when all packages are shipped or all pickups are picked up.
*/
@property(nonatomic) NSString * fulfillmentStatus;

/**
The combined price for all items in the order, including all selected options but excluding any discounts.
*/
@property(nonatomic) NSNumber * handlingAmount;

/**
If the handling fee for the order is subject to sales tax, the total tax amount.
*/
@property(nonatomic) NSNumber * handlingTaxTotal;

/**
This total represents the handling amount value with any applied discounts.
*/
@property(nonatomic) NSNumber * handlingTotal;

/**
If true, the order has a draft that may include one or more uncommitted changes to the order or its components.
*/
@property(nonatomic) NSNumber * hasDraft;

/**
Unique identifier of the order.
*/
@property(nonatomic) NSString * id;

/**
If the order was imported from an external program, the date and time the order was imported into Mozu.
*/
@property(nonatomic) NSDate * importDate;

/**
The IP address from which the order originated.
*/
@property(nonatomic) NSString * ipAddress;

/**
If true, this version of the order is a draft that might contain uncommitted changes.
*/
@property(nonatomic) NSNumber * isDraft;

/**
If true, the shopper can return any of the items in this order to the tenant.
*/
@property(nonatomic) BOOL isEligibleForReturns;

/**
If true, this order was submitted using an external system, and the order record was imported into Mozu.
*/
@property(nonatomic) NSNumber * isImport;

/**
If true, the order is exempt from applied sales tax.
*/
@property(nonatomic) NSNumber * isTaxExempt;

/**
The total amount of tax applied to items in the order.
*/
@property(nonatomic) NSNumber * itemTaxTotal;

/**
The date when the order was last validated against the product catalog. Date in UTC Date/Time. System-supplied and read-only.
*/
@property(nonatomic) NSDate * lastValidationDate;

/**
The unique code that identifies the location where the order was submitted.
*/
@property(nonatomic) NSString * locationCode;

/**
The order number that displays on the storefront which differs from the order ID.
*/
@property(nonatomic) NSNumber * orderNumber;

/**
Identifier of the cart prior to the customer proceeding to checkout.
*/
@property(nonatomic) NSString * originalCartId;

/**
If this order was created to fulfill an item replacement as part of a return merchandise authorization (RMA), the unique identifier of the return.
*/
@property(nonatomic) NSString * parentReturnId;

/**
Status of the payment for the specified order.
*/
@property(nonatomic) NSString * paymentStatus;

/**
Status of any returns associated with this order after it was completed.
*/
@property(nonatomic) NSString * returnStatus;

/**
The shipping subtotal amount calculated without any applied discounts.
*/
@property(nonatomic) NSNumber * shippingSubTotal;

/**
The total amount of sales tax incurred for shipping charges on the order.
*/
@property(nonatomic) NSNumber * shippingTaxTotal;

/**
Amount of the shipping fees for the order.
*/
@property(nonatomic) NSNumber * shippingTotal;

/**
Unique identifier of the site.
*/
@property(nonatomic) NSNumber * siteId;

/**
The device from which the order originated in the case of offline orders.
*/
@property(nonatomic) NSString * sourceDevice;

/**
The current status of this order. Possible values are "Pending", "Submitted", "Processing", "Pending Review", "Closed", or "Cancelled". System-supplied and read-only.
*/
@property(nonatomic) NSString * status;

/**
The date and time the order was submitted. System-supplied and read-only.
*/
@property(nonatomic) NSDate * submittedDate;

/**
Amount of the order without sales tax, shipping costs, and other fees.
*/
@property(nonatomic) NSNumber * subtotal;

/**
The total monetary sum of sales tax for the order.
*/
@property(nonatomic) NSNumber * taxTotal;

/**
Unique identifier of the Mozu tenant.
*/
@property(nonatomic) NSNumber * tenantId;

/**
Amount of the order, including items, sales tax, shipping costs, and other fees.
*/
@property(nonatomic) NSNumber * total;

/**
The total amount collected to date for the order.
*/
@property(nonatomic) NSNumber * totalCollected;

/**
The current version number of the order.
*/
@property(nonatomic) NSString * version;

/**
Unique identifier of the customer visit in which the order was created or last updated.
*/
@property(nonatomic) NSString * visitId;

/**
Unique identifier of the web session in which the order was created or last updated.
*/
@property(nonatomic) NSString * webSessionId;

/**
Properties of an ad-hoc price adjustment for an order.
*/
@property(nonatomic) MOZUAdjustment *adjustment;

/**
Paged list collection of order attributes.
*/
@property(nonatomic) NSArray<MOZUOrderAttribute> *attributes;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Container for the customer billing information associated with an order.
*/
@property(nonatomic) MOZUBillingInfo *billingInfo;

/**
Paged list of notes entered when the order was modified.
*/
@property(nonatomic) NSArray<MOZUChangeMessage> *changeMessages;

/**
Properties of the item fulfillment information associated with the order. Shoppers can fulfill order items using in-store pickup or direct shipping.
*/
@property(nonatomic) MOZUFulfillmentInfo *fulfillmentInfo;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUOrderItem> *items;

/**
Paged list collection of order notes.
*/
@property(nonatomic) NSArray<MOZUOrderNote> *notes;

/**
List of order-level discounts that apply to the order.
*/
@property(nonatomic) NSArray<MOZUAppliedDiscount> *orderDiscounts;

/**
Array list of physical packages shipped for the specified order.
*/
@property(nonatomic) NSArray<MOZUCommercePackage> *packages;

/**
Wrapper for a collection of payments associated with this order. An order can include any number of payments.
*/
@property(nonatomic) NSArray<MOZUPayment> *payments;

/**
Array list of the in-store pickups defined for the order.
*/
@property(nonatomic) NSArray<MOZUPickup> *pickups;

/**
Array list of the shipments defined to fulfill items in this order using the direct ship fulfillment method.
*/
@property(nonatomic) NSArray<MOZUShipment> *shipments;

/**
Properties of an ad-hoc price adjustment made for an order.
*/
@property(nonatomic) MOZUAdjustment *shippingAdjustment;

/**
List of shipping discounts to apply to the order.
*/
@property(nonatomic) NSArray<MOZUShippingDiscount> *shippingDiscounts;

/**
A paged list collection of shopper notes for the order.
*/
@property(nonatomic) MOZUShopperNotes *shopperNotes;

/**
Response returned by an order validation capability application.
*/
@property(nonatomic) NSArray<MOZUOrderValidationResult> *validationResults;

@end

