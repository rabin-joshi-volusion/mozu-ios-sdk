
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
#import "MOZUTenantCollection.h"
#import "MOZUUser.h"


@interface MOZUAdminUserClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the Mozu tenants or development stores for which the specified user has an assigned role.
@param responseFields Use this field to include those fields which are not included by default.
@param userId Unique identifier of the user whose tenant scopes you want to retrieve.
*/

+ (MOZUClient *)clientForGetTenantScopesForUserOperationWithUserId:(NSString *)userId responseFields:(NSString *)responseFields;

/**
Retrieves the details of the specified administrator user account.
@param responseFields Use this field to include those fields which are not included by default.
@param userId Unique identifier of the user whose tenant scopes you want to retrieve.
*/

+ (MOZUClient *)clientForGetUserOperationWithUserId:(NSString *)userId responseFields:(NSString *)responseFields;


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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end