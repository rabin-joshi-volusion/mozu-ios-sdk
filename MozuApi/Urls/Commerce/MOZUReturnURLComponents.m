/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReturnURLComponents.h"

@implementation MOZUReturnURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetReturnsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAvailableReturnActionsOperationWithReturnId:(NSString *)returnId {
	NSString *template = @"/api/commerce/returns/{returnId}/actions";
	NSDictionary *params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetReturnItemOperationWithReturnId:(NSString *)returnId returnItemId:(NSString *)returnItemId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/items/{returnItemId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"returnItemId" : returnItemId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetReturnItemsOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/items?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAvailablePaymentActionsForReturnOperationWithReturnId:(NSString *)returnId paymentId:(NSString *)paymentId {
	NSString *template = @"/api/commerce/returns/{returnId}/payments/{paymentId}/actions";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetPaymentOperationWithReturnId:(NSString *)returnId paymentId:(NSString *)paymentId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/payments/{paymentId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetPaymentsOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/payments?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetReturnOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForCreateReturnOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForCreateReturnItemOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/items?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForPerformPaymentActionForReturnOperationWithReturnId:(NSString *)returnId paymentId:(NSString *)paymentId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/payments/{paymentId}/actions?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForCreatePaymentActionForReturnOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/payments/actions?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForPerformReturnActionsOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/actions?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateReturnOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForResendReturnEmailOperation {
	NSString *template = @"/api/commerce/returns/email/resend";
	NSDictionary *params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteOrderItemOperationWithReturnId:(NSString *)returnId returnItemId:(NSString *)returnItemId {
	NSString *template = @"/api/commerce/returns/{orderId}/items/{orderItemId}?updatemode={updateMode}&version={version}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"returnItemId" : returnItemId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForDeleteReturnOperationWithReturnId:(NSString *)returnId {
	NSString *template = @"/api/commerce/returns/{returnId}";
	NSDictionary *params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end