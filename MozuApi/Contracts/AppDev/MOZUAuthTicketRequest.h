
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



@protocol MOZUAuthTicketRequest
@end


/**
	Properties of the authentication ticket refresh requests, which includes the refresh token string.
*/
@interface MOZUAuthTicketRequest : JSONModel<MOZUAuthTicketRequest>

/**
The refresh token string from the application authentication ticket.
*/
@property(nonatomic) NSString* refreshToken;

@end

