
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
#import "MOZUDocumentType.h"
#import "MOZUDocumentTypeCollection.h"


@interface MOZUDocumentTypeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param pageSize 
@param startIndex 
*/

+(MOZUClient*)clientForGetDocumentTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims;

/**

@param documentTypeName 
*/

+(MOZUClient*)clientForGetDocumentTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentTypeName:(NSString*)documentTypeName userClaims:(MOZUUserAuthTicket*)userClaims;


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