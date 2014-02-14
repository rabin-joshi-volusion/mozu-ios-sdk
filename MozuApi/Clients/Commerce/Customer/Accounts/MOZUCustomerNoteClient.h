
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
#import "MOZUCustomerNote.h"
#import "MOZUCustomerNoteCollection.h"


@interface MOZUCustomerNoteClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the contents of a particular note attached to a specified customer account.
@param accountId Unique identifier of the customer account that contains the note being retrieved.
@param noteId Unique identifier of a particular note to retrieve.
*/

+(MOZUClient*)clientForGetAccountNoteOperationWithWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a list of notes added to a customer account according to any specified filter criteria and sort options.
@param accountId Unique identifier of the customer account.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+(MOZUClient*)clientForGetAccountNotesOperationWithWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new note to the specified customer account.
@param note Properties of the customer account note to create.
@param accountId Unique identifier of the customer account for which to create the note.
*/

+(MOZUClient*)clientForAddAccountNoteOperationWithWithnote:((MOZUCustomerNote*))note accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies an existing note for a customer account.
@param note The new content to replace the existing note.
@param accountId Unique identifier of the customer account note to modify.
@param noteId Unique identifier of the note to update.
*/

+(MOZUClient*)clientForUpdateAccountNoteOperationWithWithnote:((MOZUCustomerNote*))note accountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a note from the specified customer account.
@param accountId Unique identifier of the customer account that contains the note being deleted.
@param noteId Unique identifier of the customer account note being deleted.
*/

+(MOZUClient*)clientForDeleteAccountNoteOperationWithWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims;



@end