
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationClient.h"
#import "MOZULocationResource.h"



@interface MOZULocationResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZULocationResource


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
Retrieves the details of the location specified in the request.
@param code User-defined code that identifies the location.
*/

-(void)locationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocation* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetLocationOperationWithCode:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a location associated with a defined location usage type for the site specified in the request.
@param code Retrieves the details of a location associated with a defined location usage type for the site specified in the request.
@param locationUsageType System-defined location usage type code, which is DS for direct ship, SP for in-store pickup, or storeFinder.
*/

-(void)locationInUsageTypeWithLocationUsageType:(NSString *)locationUsageType code:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocation* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetLocationInUsageTypeOperationWithLocationUsageType:locationUsageType code:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of the locations configured for a specified location usage type for the specified site, according to any defined filter or sort criteria.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param locationUsageType System-defined location usage type code, which is DS for direct ship, SP for in-store pickup, or storeFinder.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)locationsInUsageTypeWithLocationUsageType:(NSString *)locationUsageType startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetLocationsInUsageTypeOperationWithLocationUsageType:locationUsageType startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of the location configured for the direct shipping (DS) location usage type for the site specified in the request. This location acts as an origin address from which order packages will ship, as well as the location where product reservations are created when order items are submitted with the direct ship fulfillment type (DS). If the direct ship location usage type is not configured for this site, the operation returns an error.
*/

-(void)directShipLocationWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocation* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetDirectShipLocationOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of the location configured for the in-store pickup (SP) location usage type for the site specified in the request. If the location is not associated with a location type configured for the in-store pickup location usage type (SP), the operation returns an error.
@param code The user-defined code that identifies the location to retrieve.
*/

-(void)inStorePickupLocationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocation* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetInStorePickupLocationOperationWithCode:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of locations valid for in-store pickup of an item in an order according to any filter and sort criteria. For example, an application could use this operation to provide a store finder feature based on the shopper's GPS coordinates. If the location types for the in-store pickup location usage type are not configured for the site, this operation returns an error.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)inStorePickupLocationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZULocationClient clientForGetInStorePickupLocationsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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