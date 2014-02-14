
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



@protocol MOZUContentLocale
@end


/**
	Properties of a content locale that determines the language and format used for a site.
*/
@interface MOZUContentLocale : JSONModel<MOZUContentLocale>

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString* code;

/**
The name of the content locale.
*/
@property(nonatomic) NSString* name;

@end

