
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAddressValidationRequestClient.h"
#import "MOZUAddressValidationRequestResource.h"



@interface MOZUAddressValidationRequestResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUAddressValidationRequestResource


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


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Validates the customer address supplied in the request.
@param body Properties of the address to validate.
*/

-(void)validateAddressWithBody:(MOZUAddressValidationRequest*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAddressValidationResponse* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUAddressValidationRequestClient clientForValidateAddressOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end