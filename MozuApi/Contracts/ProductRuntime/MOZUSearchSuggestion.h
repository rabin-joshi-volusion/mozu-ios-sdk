
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



@protocol MOZUSearchSuggestion
@end


/**
	Suggest product search terms to a customer based on defined queries.
*/
@interface MOZUSearchSuggestion : JSONModel<MOZUSearchSuggestion>

/**
The query term entered by the shopper.
*/
@property(nonatomic) NSString* query;

/**
The term suggestions to return based on the specified query value.
*/
@property(nonatomic) NSArray* suggestions;

@end

