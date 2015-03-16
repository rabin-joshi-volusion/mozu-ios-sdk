
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
#import "MOZUUserAuthInfo.h"
#import "MOZUDeveloperAdminUserAuthTicket.h"


@interface MOZUDeveloperAdminUserAuthTicketClient : NSObject

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
Generate an authentication ticket for a developer account.
@param body Information required to authenticate a user.
@param developerAccountId Unique identifier of the developer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForCreateDeveloperUserAuthTicketOperationWithBody:(MOZUUserAuthInfo *)body developerAccountId:(NSNumber *)developerAccountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Generates a new developer account authentication ticket for the specified tenant by supplying the defined refresh token information.
@param body Properties of the authentication ticket to be used in developer account claims with the Mozu API.
@param developerAccountId Unique identifier of the developer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForRefreshDeveloperAuthTicketOperationWithBody:(MOZUDeveloperAdminUserAuthTicket *)body developerAccountId:(NSNumber *)developerAccountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the authentication ticket for the developer account by supplying the refresh token.
@param refreshToken Alphanumeric string used for access tokens. This token refreshes access for accounts by generating a new developer or application account authentication ticket after an access token expires.
*/

+ (MOZUClient *)clientForDeleteUserAuthTicketOperationWithRefreshToken:(NSString *)refreshToken;



@end