
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
#import "MOZUHttpStatus.h"



@protocol MOZUEventDeliveryAttempt
@end


@interface MOZUEventDeliveryAttempt : JSONModel<MOZUEventDeliveryAttempt>

@property(nonatomic) NSString* deliveryStatus;

@property(nonatomic) NSString* errorType;

@property(nonatomic) NSDate* executionDate;

@property(nonatomic) NSString* message;

@property(nonatomic) MOZUHttpStatus* httpStatus;

@end
