
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationUsageClient.h"
#import "MOZULocationUsageResource.h"


@interface MOZULocationUsageResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZULocationUsageResource

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

-(void)locationUsagesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationUsageCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationUsageClient clientForGetLocationUsagesOperation userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)locationUsageWithWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationUsage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationUsageClient clientForGetLocationUsageOperationWithWithCode:code userClaims:userClaims];
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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateLocationUsageWithWithUsage:(MOZULocationUsage*)usage code:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationUsage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationUsageClient clientForUpdateLocationUsageOperationWithWithUsage:usage code:code userClaims:userClaims];
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



@end