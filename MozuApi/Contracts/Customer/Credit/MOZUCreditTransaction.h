
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
#import "MOZUAuditInfo.h"



@protocol MOZUCreditTransaction
@end


@interface MOZUCreditTransaction : JSONModel<MOZUCreditTransaction>

@property(nonatomic) NSString * comments;

@property(nonatomic) NSNumber * id;

@property(nonatomic) NSNumber * impactAmount;

@property(nonatomic) NSString * transactionType;

@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

