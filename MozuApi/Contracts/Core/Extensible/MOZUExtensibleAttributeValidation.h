
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



@protocol MOZUExtensibleAttributeValidation
@end


@interface MOZUExtensibleAttributeValidation : JSONModel<MOZUExtensibleAttributeValidation>

/**
The latest possible date and time the extensible attribute can be validated.
*/
@property(nonatomic) NSDate * maxDateTime;

/**
The maximum number that can be entered as a value for an extensible attribute.
*/
@property(nonatomic) NSNumber * maxNumericValue;

/**
The maximum length possible for a string value entered for an extensible attribute.
*/
@property(nonatomic) NSNumber * maxStringLength;

/**
The earliest date and time an extensible attribute can be validated.
*/
@property(nonatomic) NSDate * minDateTime;

/**
The minimum numeric value required to validate an extensible attribute.
*/
@property(nonatomic) NSNumber * minNumericValue;

/**
The maximum length possible for a string value entered for an extensible attribute.
*/
@property(nonatomic) NSNumber * minStringLength;

/**
Regular expression used to validate the extensible attribute value.
*/
@property(nonatomic) NSString * regularExpression;

@end

