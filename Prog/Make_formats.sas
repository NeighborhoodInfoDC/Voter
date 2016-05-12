/**************************************************************************
 Program:  Make_formats.sas
 Library:  Voter
 Project:  NeighborhoodInfo DC
 Author:   P. Tatian
 Created:  11/10/08
 Version:  SAS 9.1
 Environment:  Windows
 
 Description:  Create formats for voter data.

 Modifications:
**************************************************************************/

%include "K:\Metro\PTatian\DCData\SAS\Inc\Stdhead.sas";

** Define libraries **;
%DCData_lib( Voter )

proc format library=voter;
  value $vhist
    "V" = "Voted in person"
    "A" = "Voted absentee"
    "N" = "Not eligible (special/primary)"
    "F" = "Failed to vote (primary/general)"
    "E" = "Eligible but failed to vote (special)";
  value $vstat
    "A" = "Active";

proc catalog catalog=Voter.formats;
  modify vhist (desc="Voting history") / entrytype=formatc;
  modify vstat (desc="Voter status") / entrytype=formatc;
  contents;
quit;


run;
