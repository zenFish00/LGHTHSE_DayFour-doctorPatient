//
//  Doctor.m
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//
#import "Doctor.h"
@class Patient;
#import "PatientRecord.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)degree
//- (instancetype)initWithName: (NSString*) name;
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = degree;
        _patientList = [[NSMutableArray alloc] init];
    }
    return self;
}

// method for doctor being able to see patient... adding patient name to doctor patient list

//-(void) seePatient{
//    NSLog(@"Doctor Has Seen Patient");
//}

-(NSMutableArray *) seePatient: (Patient *) newPatient{
    
    [self.patientList addObject:newPatient];
    
    NSLog(@"Doctor Has Seen Patient");
    return self.patientList;
}

-(PatientRecord *) requestMedication: (Patient *) patient patientSymptoms: (PatientSymptom)symptom {
    NSLog(@"Patient asked for medication.");
    // loop thru patient array, if find patient, then do...
    
    BOOL patientFound = NO;
    
    for (patient in self.patientList){
        patientFound = YES;
    }
    if (patientFound == YES){
        NSLog(@"Doctor Can Perscribe Medication.");
        
        PatientRecord *patientRecord = [[PatientRecord alloc] init];
        
        patientRecord.doctorName = self.name;
        
        
        switch (symptom) {
            case PatientSymptomSoreThroat:
                NSLog(@"HAVE: Salt Water");
                patientRecord.medicationGiven = @"Salt Water";

                break;
                
            case PatientSymptomHeadache:
                NSLog(@"HAVE: Tylenol");
                patientRecord.medicationGiven = @"Tylenol";

                break;
                
            case PatientSymptomSoreNeck:
                NSLog(@"HAVE: Advil");
                patientRecord.medicationGiven = @"Advil";
                break;
            default:
                break;
        }
        patientRecord.patientSymptom = symptom;
        
       
        
        return patientRecord;
        
    }
    
    if (patientFound == NO) {
        NSLog(@"Doctor CAN'T Perscribe Medication.");
    }
    
    return nil;
}







@end
