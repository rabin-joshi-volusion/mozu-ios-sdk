
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductExtraClient.h"
#import "MOZUProductExtraResource.h"



@interface MOZUProductExtraResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUProductExtraResource


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
Retrieves a list of extras configured for the product according to any defined filter and sort criteria.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)extrasWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductExtra>* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductExtraClient clientForGetExtrasOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of an extra attribute configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)extraWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductExtra* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductExtraClient clientForGetExtraOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
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

/**
Configure an extra attribute for the product specified in the request.
@param body Properties of the product extra to configure for the specified product.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)addExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductExtra* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductExtraClient clientForAddExtraOperationWithDataViewMode:dataViewMode body:body productCode:productCode userClaims:userClaims];
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

/**
Updates the configuration of an extra attribute for the product specified in the request.
@param body Properties of the extra attribute to update for the specified product.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)updateExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductExtra* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductExtraClient clientForUpdateExtraOperationWithDataViewMode:dataViewMode body:body productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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
Delete a product extra configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)deleteExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUProductExtraClient clientForDeleteExtraOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end