//
//  Doctor.h
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
@class PatientRecord;

@protocol Doctor

-(BOOL) hasValidHealthCard;

@end

typedef NS_ENUM(NSUInteger, PatientSymptom) {
    PatientSymptomHeadache,
    PatientSymptomSoreThroat,
    PatientSymptomSoreNeck,
};

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableArray *patientList;




//- (instancetype)initWithName: (NSString*) name;
- (instancetype)initWithName:(NSString *)name specialization:(NSString *)degree;

//-(void) seePatient;

-(NSMutableArray *) seePatient: (Patient *) newPatient;

-(PatientRecord *) requestMedication: (Patient *) patient patientSymptoms: (PatientSymptom)symptom;




@end
