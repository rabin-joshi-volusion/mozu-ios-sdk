
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminProductClient.h"
#import "MOZUAdminProductURLComponents.h"
#import "MozuProductInCatalogInfo.h"
#import "MozuAdminProduct.h"
#import "MozuAdminProductCollection.h"


@implementation MOZUAdminProductClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetProductsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit noCount:(NSNumber*)noCount userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForGetProductsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit noCount:noCount];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProductCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForGetProductOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductInCatalogsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForGetProductInCatalogsOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductInCatalogInfo arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForGetProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProduct*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForAddProductOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForAddProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductInCatalogInfo*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForAddProductInCatalogOperationWithProductCode:productCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProduct*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForUpdateProductOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateProductInCatalogsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductInCatalogInfo>*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForUpdateProductInCatalogsOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductInCatalogInfo arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductInCatalogInfo*)body productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForUpdateProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForDeleteProductOperationWithProductCode:productCode];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;
	return client;
}

+(MOZUClient*)clientForDeleteProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductURLComponents URLComponentsForDeleteProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;
	return client;
}



@end