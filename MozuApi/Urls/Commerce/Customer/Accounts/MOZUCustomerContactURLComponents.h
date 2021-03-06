/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUCustomerContactURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getAccountContact
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getAccountContacts
@param accountId Unique identifier of the customer account.
@param startIndex 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAccountContactsOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addAccountContact
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddAccountContactOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateAccountContact
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteAccountContact
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId;



@end