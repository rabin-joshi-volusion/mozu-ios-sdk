
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
#import "MOZUAuthTicket.h"
#import "MOZUFulfillmentInfo.h"


@interface MOZUFulfillmentInfoClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param draft 
@param orderId 
*/

+ (MOZUClient *)clientForGetFulfillmentInfoOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param orderId 
@param updateMode 
@param version 
*/

+ (MOZUClient *)clientForSetFulFillmentInfoOperationWithBody:(MOZUFulfillmentInfo *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end