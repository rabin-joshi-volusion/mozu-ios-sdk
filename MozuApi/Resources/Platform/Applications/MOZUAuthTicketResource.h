
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

#import "MOZUAppAuthInfo.h"
#import "MOZUAuthTicket.h"
#import "MOZUAuthTicketRequest.h"


@interface MOZUAuthTicketResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

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
Generate an authentication ticket for an application.
@param appAuthInfo Authentication information required to generate an authentication ticket includes the application id and the shared secret.
*/

-(void)authenticateAppWithAppAuthInfo:(MOZUAppAuthInfo*)appAuthInfo completionHandler:(void(^)(MOZUAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes the application's authentication ticket and generates a new access token by providing the refresh token string.
@param authTicketRequest The refresh token string required to update the application authentication ticket.
*/

-(void)refreshAppAuthTicketWithAuthTicketRequest:(MOZUAuthTicketRequest*)authTicketRequest completionHandler:(void(^)(MOZUAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes an authentication for an application based on the specified refresh token.
@param refreshToken The refresh token string from the application's authentication ticket.
*/

-(void)deleteAppAuthTicketWithRefreshToken:(NSString*)refreshToken completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end