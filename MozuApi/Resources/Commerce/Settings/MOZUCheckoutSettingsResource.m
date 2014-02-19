
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCheckoutSettingsClient.h"
#import "MOZUCheckoutSettingsResource.h"


@interface MOZUCheckoutSettingsResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCheckoutSettingsResource

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
Retrieves all checkout settings defined for the site including payment settings (payment gateway ID and credentials), shopper checkout settings (login requirement or guest mode and custom attributes), and order processing settings (when payment is authorized and captured plus any custom attributes).
*/

-(void)checkoutSettingsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCheckoutSettings* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCheckoutSettingsClient clientForGetCheckoutSettingsOperationWithUserClaims:userClaims];
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end