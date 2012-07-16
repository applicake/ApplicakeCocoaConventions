/**
 Applicake Cocoa Conventions
 
 Maximum column width 100 characters
*/

#import <Framework/Header.h>

@interface Convention : UIControl <
ProtocolOne,
ProtocolTwo,
ProtocolThree>

+ (NSString *)classMethodOne;
+ (NSString *)classMethodTwo;

@property (strong, nonatomic, readwrite) NSNumber *propertyOne;
@property (strong, nonatomic, readwrite) NSString *propertyTwo;
@property (weak, nonatomic, readwrite) NSDictionary *propertyThree;

/** A single line comment explaining a property. Compatible with AppleDoc. */
@property (strong, nonatomic, readwrite) NSObject *propertyFour;

/** A bunch of related properties that deserve to be grouped together. */
@property (strong, nonatomic, readwrite) NSObject *spoon
@property (strong, nonatomic, readwrite) NSObject *fork
@property (strong, nonatomic, readwrite) NSObject *knife

- (void)methodOne;
- (void)longMethodTwoWithParameterOne:(NSObject *)anObject
                      andParameterTwo:(NSString *)anotherObject;
- (NSString *)methodThreeForObject:(id)anObject;

/** 
 A multiple line comment.
 
 More comment guidelines: http://gentlebytes.com/appledoc-docs-comments/
 
 @return BOOM if philosoraptor doesn't like you, otherwise nil.
*/
- (BOOM)makeItExplode;

@end

#define CHOCOLATE_CAKE 1337.0f

static const NSString *kConventionKey = @"conventionKey";

@interface Convention () 
{
    NSObject *_lazyInstanceObject;
}

- (void)_privateMethodOne;

@end

@implementation

#pragma mark Accessors

@synthesize propertyOne = _propertyOne;
@synthesize propertyTwo = _propertyTwo;
@synthesize propertyThree = _propertyThree;

@synthesize propertyFour = _propertyFour;

@synthesize spoon = _spoon;
@synthesize fork = _fork;
@synthesize knife = _knife;

@dynamic lazyInstanceObject;

- (NSObject *)lazyInstanceObject 
{

}

#pragma mark Constructors

- (id)init
{

}

- (void)dealloc
{

}

#pragma mark - UIResponder

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

}

#pragma mark - UIControl

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    
}

#pragma mark - <ProtocolOne>

- (void)someFancyProtocolOneMethod
{

}

#pragma mark - Convention ()

- (void)_privateMethodOne
{

}

#pragma mark - Convention

- (void)methodOne
{

}

- (void)longMethodTwoWithParameterOne:(NSObject *)anObject
                      andParameterTwo:(NSString *)anotherObject
{

}

- (NSString *)methodThreeForObject:(id)anObject 
{
    // a comment
    NSString *aString = nil;
    
    if (anObject) {
        aString = @"foo";
    } 
    else if ([anObject doesSomething]) {
        aString = @"bar";
    } 
    else {
        aString = @"baz";
    }
}

@end
