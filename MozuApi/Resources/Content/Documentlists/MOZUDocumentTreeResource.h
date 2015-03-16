
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

#import "MOZUDocument.h"


@interface MOZUDocumentTreeResource : NSObject


@property(readonly, nonatomic) MOZUDataViewMode dataViewMode;
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;
-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode)dataViewMode;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieve the content associated with the document, such as a product image or PDF specifications file.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)treeDocumentContentWithDocumentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a document based on its document list and folder path in the document hierarchy.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)treeDocumentWithDocumentListName:(NSString *)documentListName documentName:(NSString *)documentName responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDocument *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
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

/**
Updates the content associated with a document, such as a product image or PDF specifications file, based on the document's position in the document hierarchy.
@param body Data stream that delivers information. Used to input and output data.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)updateTreeDocumentContentWithBody:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the content associated with a document, such as a product image or PDF specifications file.
@param body Data stream that delivers information. Used to input and output data.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)deleteTreeDocumentContentWithBody:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end