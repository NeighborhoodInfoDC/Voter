/**************************************************************************
 Program:  Voter_2008_07.sas
 Library:  Voter
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  11/10/08
 Version:  SAS 9.1
 Environment:  Windows
 
 Description:  Read voter data for 07/2008.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( Voter )

filename fimport "D:\DCData\Libraries\Voter\Raw\2008\dc_voters_072008.csv" lrecl=2000;

data Voter.Voter_2008_07 (label="Voter registration and voting history, July 2008, DC");

  infile fimport delimiter = ',' missover dsd  firstobs=2;

  informat VOTER_ID $15. ;
  informat REGISTERED mmddyy10. ;
  informat LASTNAME $20. ;
  informat FIRSTNAME $20. ;
  informat MIDDLE $1. ;
  informat SUFFIX $3. ;
  informat STATUS $1. ;
  informat PARTY $20. ;
  informat AGE_GROUP $8. ;
  informat RES_HOUSE $10. ;
  informat RES_FRAC $10. ;
  informat RES_CITY $25. ;
  informat RES_STATE $2. ;
  informat RES_APT $10. ;
  informat RES_STREET $40. ;
  informat RES_ZIP $5. ;
  informat PRECINCT $3. ;
  informat POLLING_PLACE $80. ;
  informat POLL_ADDRESS $40. ;
  informat WARD $10. ;
  informat ANC $10. ;
  informat SMD $10. ;

  informat 
    E_02_2008_P
    E_08_2007_S
    E_05_2007_S
    E_11_2006_G
    E_09_2006_P
    E_11_2004_G
    E_09_2004_P
    E_04_2004_S
    E_01_2004_P
    E_11_2002_G
    E_09_2002_P
    E_11_2000_G
    E_09_2000_P
    E_06_2000_P
    E_05_2000_P
    E_11_1998_G
    E_09_1998_P
    E_11_1997_G
    E_07_1997_S
    E_04_1997_S
    E_11_1996_G
    E_09_1996_P
    E_05_1996_P
    E_05_1995_S
    E_11_1994_G
    E_09_1994_P
    $1. 
  ;

  input
           VOTER_ID $
           REGISTERED : mmddyy10.
           LASTNAME $
           FIRSTNAME $
           MIDDLE $
           SUFFIX $
           STATUS $
           PARTY $
           AGE_GROUP $
           RES_HOUSE $
           RES_FRAC $
           RES_CITY $
           RES_STATE $
           RES_APT $
           RES_STREET $
           RES_ZIP $
           PRECINCT $
           POLLING_PLACE $
           POLL_ADDRESS $
           WARD $
           ANC $
           SMD $
           E_02_2008_P
           E_08_2007_S
           E_05_2007_S
           E_11_2006_G
           E_09_2006_P
           E_11_2004_G
           E_09_2004_P
           E_04_2004_S
           E_01_2004_P
           E_11_2002_G
           E_09_2002_P
           E_11_2000_G
           E_09_2000_P
           E_06_2000_P
           E_05_2000_P
           E_11_1998_G
           E_09_1998_P
           E_11_1997_G
           E_07_1997_S
           E_04_1997_S
           E_11_1996_G
           E_09_1996_P
           E_05_1996_P
           E_05_1995_S
           E_11_1994_G
           E_09_1994_P
         ;
      
  format _all_ ;
  informat _all_ ;

  format registered mmddyy10.;
  
  format status $vstat.;

  format 
    E_02_2008_P
    E_08_2007_S
    E_05_2007_S
    E_11_2006_G
    E_09_2006_P
    E_11_2004_G
    E_09_2004_P
    E_04_2004_S
    E_01_2004_P
    E_11_2002_G
    E_09_2002_P
    E_11_2000_G
    E_09_2000_P
    E_06_2000_P
    E_05_2000_P
    E_11_1998_G
    E_09_1998_P
    E_11_1997_G
    E_07_1997_S
    E_04_1997_S
    E_11_1996_G
    E_09_1996_P
    E_05_1996_P
    E_05_1995_S
    E_11_1994_G
    E_09_1994_P
    $vhist.
  ;

  label
    Voter_ID = "Voter ID"
    Registered = "Date first registered"
    LastName = "Voter last name"
    FirstName = "Voter first name"
    Middle = "Voter middle initial"
    Suffix = "Voter name suffix" 
    Status = "Status"
    Party = "Current party affiliation"
    Age_Group = "Current age (offered in lieu of birth date)"
    Res_House = "Voter street address number"
    Res_Frac = "Voter street address number fraction"
    Res_City = "Voter city"
    Res_State = "Voter state"
    Res_Apt  = "Voter apartment number"
    Res_Street = "Voter street name and quadrant"
    Res_Zip = "Voter ZIP code"
    Precinct = "Voter voting precinct"
    Polling_Place = "Polling place name"
    Poll_Address = "Polling place address"
    Ward = "Voter ward of residence"
    ANC = "Voter ANC of residence"
    SMD = "Voter Single Member District"
    E_02_2008_P = "Primary election, 2/2008"
    E_08_2007_S = "Special election, 8/2007"
    E_05_2007_S = "Special election, 5/2007"
    E_11_2006_G = "General election, 11/2006"
    E_09_2006_P = "Primary election, 9/2006"
    E_11_2004_G = "General election, 11/2004"
    E_09_2004_P = "Primary election, 9/2004"
    E_04_2004_S = "Special election, 4/2004"
    E_01_2004_P = "Primary election, 1/2004"
    E_11_2002_G = "General election, 11/2002"
    E_09_2002_P = "Primary election, 9/2002"
    E_11_2000_G = "General election, 11/2000"
    E_09_2000_P = "Primary election, 9/2000"
    E_06_2000_P = "Primary election, 6/2000"
    E_05_2000_P = "Primary election, 5/2000"
    E_11_1998_G = "General election, 11/1998"
    E_09_1998_P = "Primary election, 9/1998"
    E_11_1997_G = "General election, 11/1997"
    E_07_1997_S = "Special election, 7/1997"
    E_04_1997_S = "Special election, 4/1997"
    E_11_1996_G = "General election, 11/1996"
    E_09_1996_P = "Primary election, 9/1996"
    E_05_1996_P = "Primary election, 5/1996"
    E_05_1995_S = "Special election, 5/1995"
    E_11_1994_G = "General election, 11/1994"
    E_09_1994_P = "Primary election, 9/1994"
  ;
      
run;


%File_info( data=Voter.Voter_2008_07, stats=, printobs=5,
            freqvars=age_group status party res_city res_state res_zip precinct polling_place ward anc smd E_: )

run;
