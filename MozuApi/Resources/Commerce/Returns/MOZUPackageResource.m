
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPackageClient.h"
#import "MOZUPackageResource.h"


@interface MOZUPackageResource()
@property(readwrite, nonatomic) MOZUApiContext * apiContext;
@end

@implementation MOZUPackageResource

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

-(void)packageWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUPackageClient clientForGetPackageOperationWithWithReturnId:returnId packageId:packageId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(result, error, response);
		}
	}];
}

-(void)packageLabelWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUPackageClient clientForGetPackageLabelOperationWithWithReturnId:returnId packageId:packageId userClaims:userClaims];
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

-(void)createPackageWithWithpackage:((MOZUCommercePackage*))package returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUPackageClient clientForCreatePackageOperationWithWithpackage:package returnId:returnId userClaims:userClaims];
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

-(void)updatePackageWithWithpackage:((MOZUCommercePackage*))package returnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUPackageClient clientForUpdatePackageOperationWithWithpackage:package returnId:returnId packageId:packageId userClaims:userClaims];
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

-(void)deletePackageWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUPackageClient clientForDeletePackageOperationWithWithReturnId:returnId packageId:packageId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil {
			handler(error, response);
		}
	}];
}



@end