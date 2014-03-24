
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUGatewayCredentialFieldValue.h"



@protocol MOZUGatewayAccount
@end


/**
	Account information for the payment.
*/
@interface MOZUGatewayAccount : JSONModel<MOZUGatewayAccount>

/**
2 letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
@property(nonatomic) NSString * countryCode;

/**
Identifier of the payment gateway.
*/
@property(nonatomic) NSString * gatewayDefinitionId;

/**
Identifier of the entity.
*/
@property(nonatomic) NSString * id;

/**
If true, the product is marked as available for sale. Setting a product to IsActive = false will prevent it from being shown on the customer facing storefront.
*/
@property(nonatomic) BOOL isActive;

/**
List of credential fields for the payment gateway account.
*/
@property(nonatomic) NSArray<MOZUGatewayCredentialFieldValue> *credentialFields;

@end

