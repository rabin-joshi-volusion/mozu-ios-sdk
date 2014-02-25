
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeOptionClient.h"
#import "MOZUProductTypeOptionURLComponents.h"
#import "MozuAttributeInProductType.h"


@implementation MOZUProductTypeOptionClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetOptionsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeOptionURLComponents URLComponentsForGetOptionsOperationWithProductTypeId:productTypeId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAttributeInProductType arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeOptionURLComponents URLComponentsForGetOptionOperationWithProductTypeId:productTypeId attributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAttributeInProductType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType*)body productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeOptionURLComponents URLComponentsForAddOptionOperationWithProductTypeId:productTypeId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAttributeInProductType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType*)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeOptionURLComponents URLComponentsForUpdateOptionOperationWithProductTypeId:productTypeId attributeFQN:attributeFQN];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAttributeInProductType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeOptionURLComponents URLComponentsForDeleteOptionOperationWithProductTypeId:productTypeId attributeFQN:attributeFQN];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;
	return client;
}



@end