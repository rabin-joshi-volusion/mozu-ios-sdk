
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUVisitClient.h"
#import "MOZUVisitResource.h"


@interface MOZUVisitResource()
@property(readwrite, nonatomic) MOZUApiContext * apiContext;
@end

@implementation MOZUVisitResource

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

-(void)visitsWithWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUVisitCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUVisitClient clientForGetVisitsOperationWithWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)visitWithWithVisitId:(NSString*)visitId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUVisit* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUVisitClient clientForGetVisitOperationWithWithVisitId:visitId userClaims:userClaims];
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

-(void)addVisitWithWithvisit:((MOZUVisit*))visit userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUVisit* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUVisitClient clientForAddVisitOperationWithWithvisit:visit userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateVisitWithWithvisit:((MOZUVisit*))visit visitId:(NSString*)visitId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUVisit* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUVisitClient clientForUpdateVisitOperationWithWithvisit:visit visitId:visitId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
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