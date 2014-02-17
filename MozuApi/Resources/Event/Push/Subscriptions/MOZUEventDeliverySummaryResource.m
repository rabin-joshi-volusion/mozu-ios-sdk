
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEventDeliverySummaryClient.h"
#import "MOZUEventDeliverySummaryResource.h"


@interface MOZUEventDeliverySummaryResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUEventDeliverySummaryResource

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

-(void)deliveryAttemptSummariesWithWithSubscriptionId:(NSString*)subscriptionId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUEventDeliverySummaryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUEventDeliverySummaryClient clientForGetDeliveryAttemptSummariesOperationWithWithSubscriptionId:subscriptionId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
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