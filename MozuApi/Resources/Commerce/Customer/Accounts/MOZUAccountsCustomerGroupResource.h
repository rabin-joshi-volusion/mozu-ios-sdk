
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
#import "MOZUCustomerGroup.h"
#import "MOZUCustomerGroupCollection.h"


@interface MOZUAccountsCustomerGroupResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve a list of customer groups associated with the customer account.
@param accountId Unique identifier of the customer account.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

-(void)accountGroupsWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerGroupCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves details of a customer account in a group.
@param accountId Unique identifier of the customer account.
@param groupId Unique identifier of the customer group.
*/

-(void)accountGroupWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerGroup* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a customer account to a group.
@param accountId Unique identifier of the customer account to add to a group.
@param groupId Unique identifier of the customer group to add the customer to.
*/

-(void)addAccountGroupWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerGroup* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

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

/**
Removes a customer account from a group.
@param accountId Unique identifier of the customer account to remove from the group.
@param groupId Unique identifier of the customer group.
*/

-(void)deleteAccountGroupWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;


@end