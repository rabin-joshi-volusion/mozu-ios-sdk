
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
#import "MOZURateRequest.h"
#import "MOZURatesResponse.h"


@interface MOZUObjectClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Retrieves a list of calculated shipping rates available on the storefront.
@param body Properties of item to rate.
*/

+ (MOZUClient *)clientForGetRatesOperationWithBody:(MOZURateRequest *)body userClaims:(MOZUUserAuthTicket *)userClaims;


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