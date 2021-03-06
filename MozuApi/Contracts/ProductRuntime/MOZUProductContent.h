
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
#import "MOZUProductImage.h"



@protocol MOZUProductContent
@end


/**
	Content associated with a product definition that can be localized.
*/
@interface MOZUProductContent : JSONModel<MOZUProductContent>

/**
Description defined for metadata, used to interally manage data, in the language specified by the `localeCode`. This content is used by categories, products, localized content, and SEO content.
*/
@property(nonatomic) NSString * metaTagDescription;

/**
Keywords defined for  metadata, used to internally manage data, in the language specified by the `localeCode`. Keywords are used by content for categories, products, localized content, and SEO content.
*/
@property(nonatomic) NSString * metaTagKeywords;

/**
Title defined for  metadata, used to internally manage data, in the language specified by the `localeCode`. Titles are used by content for categories, products, localized content, and SEO content.
*/
@property(nonatomic) NSString * metaTagTitle;

/**
Lengthy full description for a product description, displayed on product detail pages within the storefront.
*/
@property(nonatomic) NSString * productFullDescription;

/**
The name of the product that represents a line item in a taxable order or product bundle.
*/
@property(nonatomic) NSString * productName;

/**
Brief text description of the product or component in a product bundle, typically used when the product is displayed in a list or in search results.
*/
@property(nonatomic) NSString * productShortDescription;

/**
The search engine optimized, human-readable portion of the URL. The content is localized according to the product's `localeCode`.
*/
@property(nonatomic) NSString * seoFriendlyUrl;

/**
List of image files associated with a product. This content may include the image file URL, name, and other information as available.
*/
@property(nonatomic) NSArray<MOZUProductImage> *productImages;

@end

