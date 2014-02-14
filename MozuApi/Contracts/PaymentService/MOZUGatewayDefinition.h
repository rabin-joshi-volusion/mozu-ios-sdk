
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
#import "MOZUPreAuthorizeDefinition.h"



@protocol MOZUGatewayDefinition
@end


/**
	Properties of the payment gateway.
*/
@interface MOZUGatewayDefinition : JSONModel<MOZUGatewayDefinition>

/**
The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
@property(nonatomic) NSString* countryCode;

/**
Unique identifier of the payment gateway definition.
*/
@property(nonatomic) NSString* id;

/**
The implementing type name of the integration with the payment gateway.
*/
@property(nonatomic) NSString* integrationImplTypeName;

/**
Name of the payment gateway.
*/
@property(nonatomic) NSString* name;

/**
URL of the production payment service.
*/
@property(nonatomic) NSString* prodServiceURL;

/**
URL of the test payment service environment.
*/
@property(nonatomic) NSString* testServiceURL;

/**
Definition of the preauthorization gateway.
*/
@property(nonatomic) PreAuthorizeDefinition preAuthorizeDefinition;

@end

