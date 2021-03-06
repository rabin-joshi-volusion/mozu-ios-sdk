
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductPropertyClient.h"
#import "MOZUProductPropertyURLComponents.h"
#import "MozuAdminProductProperty.h"
#import "MozuProductPropertyValueLocalizedContent.h"


@implementation MOZUProductPropertyClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetPropertiesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode {
	id url = [MOZUProductPropertyURLComponents URLComponentsForGetPropertiesOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAdminProductProperty arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPropertyValueLocalizedContentsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value {
	id url = [MOZUProductPropertyURLComponents URLComponentsForGetPropertyValueLocalizedContentsOperationWithProductCode:productCode attributeFQN:attributeFQN value:value];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductPropertyValueLocalizedContent arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForGetPropertyValueLocalizedContentOperationWithProductCode:productCode attributeFQN:attributeFQN value:value localeCode:localeCode responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductPropertyValueLocalizedContent alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForGetPropertyOperationWithProductCode:productCode attributeFQN:attributeFQN responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProductProperty alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddPropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductPropertyValueLocalizedContent *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForAddPropertyValueLocalizedContentOperationWithProductCode:productCode attributeFQN:attributeFQN value:value responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductPropertyValueLocalizedContent alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForAddPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForAddPropertyOperationWithProductCode:productCode responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProductProperty alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdatePropertyValueLocalizedContentsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductPropertyValueLocalizedContent> *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value {
	id url = [MOZUProductPropertyURLComponents URLComponentsForUpdatePropertyValueLocalizedContentsOperationWithProductCode:productCode attributeFQN:attributeFQN value:value];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductPropertyValueLocalizedContent arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdatePropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductPropertyValueLocalizedContent *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForUpdatePropertyValueLocalizedContentOperationWithProductCode:productCode attributeFQN:attributeFQN value:value localeCode:localeCode responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductPropertyValueLocalizedContent alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdatePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	id url = [MOZUProductPropertyURLComponents URLComponentsForUpdatePropertyOperationWithProductCode:productCode attributeFQN:attributeFQN responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProductProperty alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeletePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN {
	id url = [MOZUProductPropertyURLComponents URLComponentsForDeletePropertyOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	return client;
}

+ (MOZUClient *)clientForDeletePropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode {
	id url = [MOZUProductPropertyURLComponents URLComponentsForDeletePropertyValueLocalizedContentOperationWithProductCode:productCode attributeFQN:attributeFQN value:value localeCode:localeCode];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	return client;
}



@end