
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPublishingScopeClient.h"
#import "MOZUPublishingScopeResource.h"



@interface MOZUPublishingScopeResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUPublishingScopeResource


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


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
*/

- (void)discardDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUPublishingScope *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPublishingScopeClient clientForDiscardDraftsOperationWithDataViewMode:dataViewMode body:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**

@param body 
*/

- (void)publishDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUPublishingScope *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPublishingScopeClient clientForPublishDraftsOperationWithDataViewMode:dataViewMode body:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


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