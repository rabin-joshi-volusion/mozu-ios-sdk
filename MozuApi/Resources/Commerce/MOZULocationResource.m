
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
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZULocationResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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

@param code 
*/

- (void)locationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetLocationOperationWithCode:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param code 
@param locationUsageType 
*/

- (void)locationInUsageTypeWithLocationUsageType:(NSString *)locationUsageType code:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetLocationInUsageTypeOperationWithLocationUsageType:locationUsageType code:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param filter 
@param locationUsageType 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)locationsInUsageTypeWithLocationUsageType:(NSString *)locationUsageType startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetLocationsInUsageTypeOperationWithLocationUsageType:locationUsageType startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

*/

- (void)directShipLocationWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetDirectShipLocationOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param code 
*/

- (void)inStorePickupLocationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetInStorePickupLocationOperationWithCode:code userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)inStorePickupLocationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationClient clientForGetInStorePickupLocationsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
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