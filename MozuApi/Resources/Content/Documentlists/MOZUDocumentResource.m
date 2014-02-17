
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentClient.h"
#import "MOZUDocumentResource.h"


@interface MOZUDocumentResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUDocumentResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

-(void)documentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForGetDocumentOperationWithDataViewMode:dataViewMode documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)documentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForGetDocumentContentOperationWithDataViewMode:dataViewMode documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)documentsWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName filter:(NSString*)filter sortBy:(NSString*)sortBy pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocumentCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForGetDocumentsOperationWithDataViewMode:dataViewMode documentListName:documentListName filter:filter sortBy:sortBy pageSize:pageSize startIndex:startIndex userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

-(void)createDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode document:(MOZUDocument*)document documentListName:(NSString*)documentListName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForCreateDocumentOperationWithDataViewMode:dataViewMode document:document documentListName:documentListName userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode document:(MOZUDocument*)document documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForUpdateDocumentOperationWithDataViewMode:dataViewMode document:document documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)updateDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode stream:(NSInputStream*)stream documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForUpdateDocumentContentOperationWithDataViewMode:dataViewMode stream:stream documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

-(void)deleteDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForDeleteDocumentOperationWithDataViewMode:dataViewMode documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}

-(void)deleteDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUDocumentClient clientForDeleteDocumentContentOperationWithDataViewMode:dataViewMode documentListName:documentListName documentId:documentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}



@end