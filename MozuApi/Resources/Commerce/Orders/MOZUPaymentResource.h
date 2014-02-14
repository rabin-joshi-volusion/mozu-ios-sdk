
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
#import "MOZUPaymentCollection.h"
#import "MOZUPaymentAction.h"
#import "MOZUOrder.h"
#import "MOZUPayment.h"


@interface MOZUPaymentResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves information about all payment transactions submitted for the specified order.
@param orderId Unique identifier of the order.
*/

-(void)paymentsWithWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPaymentCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves information about a specific payment transaction submitted for the specified order.
@param orderId Unique identifier of the order associated with the payment transaction.
@param paymentId Unique identifier of the payment transaction submitted for the order.
*/

-(void)paymentWithWithOrderId:(NSString*)orderId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPayment* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the list of all available payment actions dependent on the order payment status by specifying the order ID.
@param orderId Unique identifier of the order associated with the payment.
@param paymentId Unique identifer of the payment for which to retrieve available actions.
*/

-(void)availablePaymentActionsWithWithOrderId:(NSString*)orderId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Performs the specified action for an individual order payment transaction.
@param action The action to perform for the payment. Possible values are AuthAndCapture, AuthorizePayment, CapturePayment, VoidPayment, CreditPayment, RequestCheck, ApplyCheck, DeclineCheck.
@param orderId Unique identifier of the order associated with the payment.
@param paymentId Unique identifer of the payment for which to perform the action.
*/

-(void)performPaymentActionWithWithaction:((MOZUPaymentAction*))action orderId:(NSString*)orderId paymentId:(NSString*)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Creates a new payment transaction for the specified order and performs the specified action.
@param action To action to perform for the newly created payment. Possible values are AuthAndCapture, AuthorizePayment, CapturePayment, VoidPayment, CreditPayment, RequestCheck, ApplyCheck, DeclineCheck.
@param orderId Unique identifier of the order for which to apply the payment.
*/

-(void)createPaymentActionWithWithaction:((MOZUPaymentAction*))action orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


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



@end