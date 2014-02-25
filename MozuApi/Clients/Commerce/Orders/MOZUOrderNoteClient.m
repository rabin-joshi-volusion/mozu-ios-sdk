
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderNoteClient.h"
#import "MOZUOrderNoteURLComponents.h"
#import "MozuOrderNote.h"


@implementation MOZUOrderNoteClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetOrderNotesOperationWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderNoteURLComponents URLComponentsForGetOrderNotesOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUOrderNote arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetOrderNoteOperationWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderNoteURLComponents URLComponentsForGetOrderNoteOperationWithOrderId:orderId noteId:noteId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateOrderNoteOperationWithBody:(MOZUOrderNote*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderNoteURLComponents URLComponentsForCreateOrderNoteOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateOrderNoteOperationWithBody:(MOZUOrderNote*)body orderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderNoteURLComponents URLComponentsForUpdateOrderNoteOperationWithOrderId:orderId noteId:noteId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteOrderNoteOperationWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderNoteURLComponents URLComponentsForDeleteOrderNoteOperationWithOrderId:orderId noteId:noteId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end