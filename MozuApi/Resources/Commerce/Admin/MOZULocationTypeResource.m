
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationTypeClient.h"
#import "MOZULocationTypeResource.h"



@interface MOZULocationTypeResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZULocationTypeResource


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

*/

- (void)locationTypesWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZULocationType> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationTypeClient clientForGetLocationTypesOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param locationTypeCode 
*/

- (void)locationTypeWithLocationTypeCode:(NSString *)locationTypeCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationTypeClient clientForGetLocationTypeOperationWithLocationTypeCode:locationTypeCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

@param body 
*/

- (void)addLocationTypeWithBody:(MOZULocationType *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationTypeClient clientForAddLocationTypeOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

@param body 
@param locationTypeCode 
*/

- (void)updateLocationTypeWithBody:(MOZULocationType *)body locationTypeCode:(NSString *)locationTypeCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZULocationType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationTypeClient clientForUpdateLocationTypeOperationWithBody:body locationTypeCode:locationTypeCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

@param locationTypeCode 
*/

- (void)deleteLocationTypeWithLocationTypeCode:(NSString *)locationTypeCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZULocationTypeClient clientForDeleteLocationTypeOperationWithLocationTypeCode:locationTypeCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end