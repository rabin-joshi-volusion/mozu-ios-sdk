
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
#import "MOZUWishlistItem.h"



@protocol MOZUWishlistItemCollection
@end


@interface MOZUWishlistItemCollection : JSONModel<MOZUWishlistItemCollection>

@property(nonatomic) NSInteger pageCount;

@property(nonatomic) NSInteger pageSize;

@property(nonatomic) NSInteger startIndex;

@property(nonatomic) NSInteger totalCount;

@property(nonatomic) NSArray<MOZUWishlistItem> *items;

@end

