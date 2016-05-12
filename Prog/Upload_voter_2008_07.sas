/**************************************************************************
 Program:  Upload_voter_2008_07.sas
 Library:  Voter
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  11/10/08
 Version:  SAS 9.1
 Environment:  Windows with SAS/Connect
 
 Description:  Upload voter data and formats to Alpha. Register with
metadata system.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";
%include "K:\Metro\PTatian\DCData\SAS\Inc\AlphaSignon.sas" /nosource2;

** Define libraries **;
%DCData_lib( Voter )

** Start submitting commands to remote server **;

rsubmit;

proc upload status=no
  inlib=Voter 
  outlib=Voter memtype=(data);
  select Voter_2008_07;

proc upload status=no
  inlib=Voter 
  outlib=Voter memtype=(catalog);
  select Formats;

run;

%Dc_update_meta_file(
  ds_lib=Voter,
  ds_name=Voter_2008_07,
  creator_process=Voter_2008_07.sas,
  restrictions=None,
  revisions=%str(New file.)
)

run;

endrsubmit;

** End submitting commands to remote server **;

run;

signoff;
