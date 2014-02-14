/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUCustomerAttributeURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getAccountAttribute
@param accountId Identifier of the customer account associated with the attribute to retrieve.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+(MOZUURL*)URLForGetAccountAttributeOperationWithAccountId:(NSInteger)accountId attributeFQN:(NSString*)attributeFQN;

/**
Resource Url for getAccountAttributes
@param accountId Identifier of the customer account associated with the attributes to retrieve.
@param startIndex 
@param pageSize 
@param sortBy 
@param filter 
*/
+(MOZUURL*)URLForGetAccountAttributesOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url for addAccountAttribute
@param accountId Unique identifier of the customer account.
*/
+(MOZUURL*)URLForAddAccountAttributeOperationWithAccountId:(NSInteger)accountId;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateAccountAttribute
@param accountId Identifier of the customer account associated with the attribute.
@param removeMissing If true, remove the items missing from the collection.
*/
+(MOZUURL*)URLForUpdateAccountAttributeOperationWithAccountId:(NSInteger)accountId removeMissing:(NSNumber*)removeMissing;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end