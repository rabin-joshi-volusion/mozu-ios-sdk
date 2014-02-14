
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
#import "MOZUDeveloperAccount.h"
#import "MOZUUserProfile.h"



@protocol MOZUDeveloperAdminUserAuthTicket
@end


/**
	Properties of the authentication ticket to be used in developer account claims with the Mozu API.
*/
@interface MOZUDeveloperAdminUserAuthTicket : JSONModel<MOZUDeveloperAdminUserAuthTicket>

/**
Alphanumeric string used to authenticate the user in API request headers.
*/
@property(nonatomic) NSString* accessToken;

/**
The date and time the user access token expires.
*/
@property(nonatomic) NSDate* accessTokenExpiration;

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate* createdOn;

/**
Collection of behaviors encrypted in the developer account authentication ticket. Behaviors are granted to users as part of the role assigned for the given developer account.
*/
@property(nonatomic) NSArray<MOZUNSInteger>* grantedBehaviors;

/**
Alphanumeric string used to generate a new developer account authentication ticket after the access token expires.
*/
@property(nonatomic) NSString* refreshToken;

/**
The date and time the developer account refresh token expires.
*/
@property(nonatomic) NSDate* refreshTokenExpiration;

/**
Properties of the developer account for which the user authentication ticket grants access.
*/
@property(nonatomic) DeveloperAccount account;

/**
Collection of developer accounts for which the user authentication ticket grants access.
*/
@property(nonatomic) NSArray<MOZUDeveloperAccount>* availableAccounts;

/**
User information associated with the authentication ticket.
*/
@property(nonatomic) UserProfile user;

@end

