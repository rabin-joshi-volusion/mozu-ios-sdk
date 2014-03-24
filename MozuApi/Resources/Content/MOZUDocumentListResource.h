
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
#import "MOZUDocumentList.h"
#import "MOZUDocumentListCollection.h"


@interface MOZUDocumentListResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a collection of document lists.
@param pageSize Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
@param startIndex 
*/

- (void)documentListsWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUDocumentListCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieve the details of a document list by providing the list name.
@param documentListName The name of the document list.
*/

- (void)documentListWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString *)documentListName userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUDocumentList *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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