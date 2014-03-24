
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
#import "MOZUDocument.h"


@interface MOZUDocumentTreeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a document based on its document list and folder path in the document hierarchy.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

+ (MOZUClient *)clientForGetTreeDocumentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString *)documentListName documentName:(NSString *)documentName userClaims:(MOZUUserAuthTicket *)userClaims;

/**
Retrieve the content associated with the document, such as a product image or PDF specifications file.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

+ (MOZUClient *)clientForGetTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString *)documentListName documentName:(NSString *)documentName userClaims:(MOZUUserAuthTicket *)userClaims;


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
Updates the content associated with a document, such as a product image or PDF specifications file, based on the document's position in the document hierarchy.
@param body 
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

+ (MOZUClient *)clientForUpdateTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the content associated with a document, such as a product image or PDF specifications file.
@param body 
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

+ (MOZUClient *)clientForDeleteTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName userClaims:(MOZUUserAuthTicket *)userClaims;



@end