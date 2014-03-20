
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
#import "MOZUSiteSettingsApplication.h"


@interface MOZUSettingsApplicationClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve the settings of a third-party application.
*/

+ (MOZUClient *)clientForThirdPartyGetApplicationOperationWithUserClaims:(MOZUUserAuthTicket *)userClaims;


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
Initializes an application with the necessary configured settings.
@param body Properties of the application to update.
*/

+ (MOZUClient *)clientForThirdPartyUpdateApplicationOperationWithBody:(MOZUSiteSettingsApplication *)body userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end