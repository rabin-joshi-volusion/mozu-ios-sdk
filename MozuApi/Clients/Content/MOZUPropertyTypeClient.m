
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPropertyTypeClient.h"
#import "MOZUPropertyTypeUrl.h"
#import "MozuPropertyTypeCollection.h"
#import "MozuPropertyValueType.h"
#import "MozuPropertyType.h"


@implementation MOZUPropertyTypeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetPropertyTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPropertyTypeURL URLForGetPropertyTypesOperationWithPageSize:pageSize startIndex:startIndex];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPropertyTypeCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPropertyTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode propertyTypeName:(NSString*)propertyTypeName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPropertyTypeURL URLForGetPropertyTypeOperationWithPropertyTypeName:propertyTypeName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPropertyType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForPropertyValueTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPropertyTypeURL URLForPropertyValueTypesOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [[NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUPropertyValueType arrayOfModelFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


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