#import "VMCurrentlyController.h"
#import "VMAPIController.h"
#import "Secrets.h"

@interface VMCurrentlyController ()
@property (nonatomic) VMAPIController *apiController;
@end

@implementation VMCurrentlyController

- (instancetype)init
{
    self = [super init];
    if (self == nil) return nil;

    self.apiController = [[VMAPIController alloc] initWithAPIKey:FORECAST_IO_API_KEY];

    [self.apiController fetchCurrentWeatherForLatitude:39.9522222 longitude:-75.1641667 succes:^(VMCurrentWeather *weather) {
        
    } failure:^(NSError *error, NSString *message) {

    }];

    return self;
}

@end
