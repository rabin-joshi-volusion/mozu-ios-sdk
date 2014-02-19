
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderNoteClient.h"
#import "MOZUOrderNoteResource.h"


@interface MOZUOrderNoteResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUOrderNoteResource

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

/**
Retrieves a list of all notes for an order.
@param orderId Unique identifier of the order.
*/

-(void)orderNotesWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUOrderNote>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderNoteClient clientForGetOrderNotesOperationWithOrderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a specific order note.
@param noteId Unique identifier of the order note to retrieve.
@param orderId Unique identifier of the order associated with the note.
*/

-(void)orderNoteWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrderNote* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderNoteClient clientForGetOrderNoteOperationWithOrderId:orderId noteId:noteId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new merchant note for the specified order.
@param orderNote The alphanumeric text contained in the note. The maximum length is 256 characters.
@param orderId Unique identifier of the order for which to add a note.
*/

-(void)createOrderNoteWithOrderNote:(MOZUOrderNote*)orderNote orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrderNote* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderNoteClient clientForCreateOrderNoteOperationWithOrderNote:orderNote orderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a specific note for an order.
@param orderNote The content of the order note. The maximum length is 256 characters.
@param noteId Unique identifier of the order note.
@param orderId Unique identifier of the order.
*/

-(void)updateOrderNoteWithOrderNote:(MOZUOrderNote*)orderNote orderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrderNote* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderNoteClient clientForUpdateOrderNoteOperationWithOrderNote:orderNote orderId:orderId noteId:noteId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified order note.
@param noteId Unique identifier of the order note to delete.
@param orderId Unique identifier of the order associated with the note.
*/

-(void)deleteOrderNoteWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderNoteClient clientForDeleteOrderNoteOperationWithOrderId:orderId noteId:noteId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end