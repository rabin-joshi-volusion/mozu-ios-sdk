
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTenantDataClient.h"
#import "MOZUTenantDataURLComponents.h"


@implementation MOZUTenantDataClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetDBValueOperationWithDbEntryQuery:(NSString*)dbEntryQuery {
	id url = [MOZUTenantDataURLComponents URLComponentsForGetDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateDBValueOperationWithBody:(NSString*)body dbEntryQuery:(NSString*)dbEntryQuery {
	id url = [MOZUTenantDataURLComponents URLComponentsForCreateDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateDBValueOperationWithBody:(NSString*)body dbEntryQuery:(NSString*)dbEntryQuery {
	id url = [MOZUTenantDataURLComponents URLComponentsForUpdateDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteDBValueOperationWithDbEntryQuery:(NSString*)dbEntryQuery {
	id url = [MOZUTenantDataURLComponents URLComponentsForDeleteDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end