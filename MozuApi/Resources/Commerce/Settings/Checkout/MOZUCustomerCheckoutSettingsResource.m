
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerCheckoutSettingsClient.h"
#import "MOZUCustomerCheckoutSettingsResource.h"


@interface MOZUCustomerCheckoutSettingsResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerCheckoutSettingsResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves all checkout settings defined for the site: Payment settings, such as the payment gateway ID and credentials, supported credit cards, and more; Customer Checkout settings, such as whether login is required, and any custom attributes; and Order Processing settings, such as when payment is authorized and captured, and any custom attributes.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)customerCheckoutSettingsWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerCheckoutSettings *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerCheckoutSettingsClient clientForGetCustomerCheckoutSettingsOperationWithResponseFields:responseFields];
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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies existing site checkout settings. Modify Payment, Customer Checkout, and Order Processing settings in one PUT.
@param body The properties of the customer checkout settings such as whether shoppers must be logged in.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateCustomerCheckoutSettingsWithBody:(MOZUCustomerCheckoutSettings *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerCheckoutSettings *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerCheckoutSettingsClient clientForUpdateCustomerCheckoutSettingsOperationWithBody:body responseFields:responseFields];
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



@end