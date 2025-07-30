 ************************************************************
 
 
   ----------------------------------------------------------  
   PHOENICS 2022 v1.0 - EARTH                                  
   (C) Copyright 2022                                          
   Concentration Heat and Momentum Limited                     
   All rights reserved.                                        
   Address:  Bakery House, 40 High Street                      
   Wimbledon, London, SW19 5AU, England                        
   tel:       +44 (0) 20-8947-7651                             
   fax:       +44 (0) 20-8879-3497                             
   e-mail:    phoenics@cham.co.uk                              
   web:       www.cham.co.uk                                   
   ----------------------------------------------------------  
   Code expiry date is the end  : jul 2025                     
   ----------------------------------------------------------  
   Running with 64-bit Double Precision executable             
   Working directory: C:\Users\marta\OneDrive\Desktop\Lab_tests\CFD1\2nd attempt
 
 ************************************************************
 
 Initial estimated storage requirement is                  10000000
 
 PRPS is not stored
 Material properties used for phase 1 are
 density
 laminar viscosity
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                         279737
 Number used after BFC allowance is                          279737
 biggest cell volume divided by average is     2.97664171583983       at:
 ix = 1 iy = 2 iz = 50
 xg =0.5 yg =0.03341 zg =0.2475
 smallest cell volume divided by average is   3.430740646189911E-002  at:
 ix = 1 iy = 15 iz = 140
 xg =0.5 yg =0.074957 zg =0.697499
 ratio of smallest to biggest is   1.152554110873893E-002
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10. reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of V1   per sweep=   100.000000000000     
 Maximum change of W1   per sweep=   100.000000000000     
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 SParsol activated
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(Length2,25-15x450                       )
 
 ************************************************************
 ************************************************************
 
 IRUNN = 1 ;LIBREF = 0
 ************************************************************
  Group 2. Time dependence
 STEADY = T
 ************************************************************
  Group 3. X-Direction Grid Spacing
 CARTES = F
 NX = 1
 XULAST =1.
 ************************************************************
  Group 4. Y-Direction Grid Spacing
 NY = 15
 YVLAST =0.075
 YFRAC(1)=0.334096 ;YFRAC(4)=0.804306
 YFRAC(7)=0.943627 ;YFRAC(10)=0.984908
 YFRAC(13)=0.997139
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 450
 ZWLAST =2.25
 ZFRAC(1)=2.22222E-03 ;ZFRAC(91)=0.202222
 ZFRAC(181)=0.402221 ;ZFRAC(271)=0.602221
 ZFRAC(361)=0.802223
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(148)=DEN1
 NAME(149)=DWDZ ;NAME(150)=DWDY
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(DWDZ,Y,N,N,N,N,Y)
 SOLUTN(DWDY,Y,N,N,N,N,Y)
 DEN1 = 148
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 ISOLX = 0 ;ISOLY = -1 ;ISOLZ = -1
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =910. ;TMP1 =0. ;EL1 =0.
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =3.41E-03 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 ENUL =3.5E-04 ;ENUT =0.
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 CP1 =1005. ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(DEN1)=910.
 FIINIT(DWDZ)=1.0E-10 ;FIINIT(DWDY)=1.0E-10
   No PATCHes yet used for this Group
 INIADD = F
 FSWEEP = 1
 NAMFI =CHAM
 ************************************************************
  Group 12. Patchwise adjustment of terms
  Patches for this group are printed with those
  for Group 13.
  Their names begin either with GP12 or &
 ************************************************************
  Group 13. Boundary & Special Sources
 
   Parent VR object for this patch is: INLE1         
 PATCH(OB1 ,LOW , 1, 1, 1, 15, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 15, 450, 450, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 15, 15, 1, 450, 1, 1)
 COVAL(OB3 ,W1 ,1. ,0. )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 1000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=200 ;LITER(V1)=10
 LITER(W1)=10
 ENDIT(P1)=1.0E-03 ;ENDIT(V1)=1.0E-03
 ENDIT(W1)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(V1,LINRLX,0.5)
 RELAX(W1,LINRLX,0.5)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(DWDZ,LINRLX,1.)
 RELAX(DWDY,LINRLX,1.)
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 VARMAX(DWDZ)=1.0E+10 ;VARMIN(DWDZ)=-1.0E+10
 VARMAX(DWDY)=1.0E+10 ;VARMIN(DWDY)=-1.0E+10
 ************************************************************
  Group 19. Data transmitted to GROUND
 DWDY = T
 DWDZ = T
 GENK = T
 PARSOL = F
 CONWIZ = T
 GEN1 = 681
 ISG62 = 0
 SPEDAT(SET,GXMONI,PLOTALL,L,T)
 SPEDAT(SET,GXMONI,CLASSIC,L,T)
 SPEDAT(SET,OBJNAM,^OB1,C,INLE1)
 SPEDAT(SET,OBJTYP,^OB1,C,INLET)
 SPEDAT(SET,OBJNAM,^OB2,C,OUTL2)
 SPEDAT(SET,OBJTYP,^OB2,C,OUTLET)
 SPEDAT(SET,ARATIO,^OB2,R,1.)
 SPEDAT(SET,OBJNAM,^OB3,C,PLAT3)
 SPEDAT(SET,OBJTYP,^OB3,C,PLATE)
 SPEDAT(SET,FACETDAT,NUMOBJ,I,3)
 ************************************************************
  Group 20. Preliminary Printout
 ************************************************************
  Group 21. Print-out of Variables
 INIFLD = F ;SUBWGR = F
    * Y in OUTPUT argument list denotes:
    * 1-field 2-correction-eq. monitor 3-selective dumping      
    * 4-whole-field residual 5-spot-value table 6-residual table
 OUTPUT(P1,N,N,Y,Y,Y,Y)
 OUTPUT(V1,N,N,Y,Y,Y,Y)
 OUTPUT(W1,N,N,Y,Y,Y,Y)
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(DWDZ,N,N,Y,N,N,N)
 OUTPUT(DWDY,N,N,Y,N,N,N)
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 14 ;IZMON = 405
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 3 ;IYPRF = 1 ;IYPRL = 15
 NZPRIN = 90 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 1000 ;NPLT = 50
 ISWPRF = 1 ;ISWPRL = 100000
 ITABL = 3 ;IPROF = 1
 ABSIZ =0.5 ;ORSIZ =0.4
 NTZPRF = 1 ;NCOLPF = 50
 ICHR = 2 ;NCOLCO = 45 ;NROWCO = 20
   No PATCHes yet used for this Group
 ************************************************************
  Group 24. Dumps For Restarts
 SAVE = T ;NOWIPE = F
 NSAVE =CHAM
 
 *** grid-geometry information ***
 X-coordinates of the cell centres
    5.000E-01
 Y-coordinates of the cell centres
    1.253E-02   5.661E-02   6.967E-02   7.354E-02   7.469E-02

 Z-coordinates of the cell centres
    2.500E-03   4.525E-01   9.025E-01   1.352E+00   1.803E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    2.506E-02   6.032E-02   7.077E-02   7.387E-02   7.479E-02

 Z-coordinates of the (higher) cell faces
    5.000E-03   4.550E-01   9.050E-01   1.355E+00   1.805E+00

 
 Total number of F-array elements used is                    280723
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 1000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     2.419E+00   8.236E-10      1.993E-09
     V1     4.080E+00   5.082E-06      2.073E-05
     W1     4.080E+00   3.070E-05      1.253E-04
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     5.766E-04   6.949E+02      3.706E-03 (    1,    1,  434)
     V1     2.081E-06   9.491E-04     -1.059E-01 (    1,    1,  450)
     W1     5.967E-06   8.698E-01      1.006E-03 (    1,    1,  435)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-6.378666E-04
 pos. sum=0. neg. sum=-6.378666E-04
 nett sum=-6.378666E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 5.182642E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-6.930875E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.460945E+00
 pos. sum=0.518264 neg. sum=-2.154032
 nett sum=-1.635768
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 1.151698E+00
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-1.151698E+00 (Mass Out -1.151698E+00 In 0.000000E+00)
 pos. sum=1.151698 neg. sum=-1.151698
 nett sum=1.731948E-14
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       1.151698E+00 -1.151698E+00  1.731948E-14
       V1       0.000000E+00 -6.378666E-04 -6.378666E-04
       W1       5.182642E-01 -2.154032E+00 -1.635768E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 14 IZMON= 405 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   1.0000E-10   1.0000E-10
     51   6.2552E+01  -4.5882E-13   4.2203E-03
    101   5.6982E+01  -8.0271E-11   4.4965E-03
    151   5.3827E+01  -3.4843E-11   4.2790E-03
    201   5.1672E+01  -2.3053E-11   4.0771E-03
    251   5.0113E+01  -1.5959E-11   3.9309E-03
    301   4.8954E+01  -1.1480E-11   3.8272E-03
    351   4.8079E+01  -8.4942E-12   3.7524E-03
    401   4.7406E+01  -6.4518E-12   3.6974E-03
    451   4.6883E+01  -5.0368E-12   3.6559E-03
    501   4.6472E+01  -3.9257E-12   3.6242E-03
    551   4.6146E+01  -3.0762E-12   3.5997E-03
    601   4.5885E+01  -2.4543E-12   3.5804E-03
    651   4.5677E+01  -2.0601E-12   3.5651E-03
    701   4.5508E+01  -1.9939E-12   3.5530E-03
    751   4.5372E+01  -2.2145E-12   3.5432E-03
    801   4.5262E+01  -6.1610E-12   3.5354E-03
    851   4.5183E+01  -1.6357E-10   3.5292E-03
    901   4.5190E+01  -7.8094E-10   3.5257E-03
    951   4.5267E+01  -1.1058E-09   3.5252E-03
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -1.106E-09  1.000E-10
     Maxval=  6.255E+01  1.000E-10  4.497E-03
     Cellav=  4.612E+01 -1.079E-10  3.576E-03
 1.00 2..1.3....+....+....+....+....+....+....+....+....+
      .  3    3                                         .
 0.90 +  2 1  2  3 2  2 2  2  2 2  2  2 2  2 2  2       +
      .    2  1  1 3  3 3                               .
 0.80 +            1  1    3  3 3  3  3 3  3 3  3  3 3  3
      .                 1  1  1 1  1  1 1  1 1          .
 0.70 +                                         1  1 1  1
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                              2  .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 3....+....+....+....+....+....+....+....+....+....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   1.9918E-10   3.2026E-01
     51   1.5054E-06   7.4591E-03   2.2199E-01
    101   8.9208E-07   2.8909E-03   1.3019E-01
    151   6.0333E-07   1.4921E-03   9.1993E-02
    201   4.1992E-07   9.1283E-04   6.3210E-02
    251   3.0460E-07   6.1866E-04   4.3791E-02
    301   2.2686E-07   4.4532E-04   3.0724E-02
    351   1.7236E-07   3.3274E-04   2.1783E-02
    401   1.3302E-07   2.5486E-04   1.5551E-02
    451   1.0393E-07   1.9864E-04   1.1138E-02
    501   8.1999E-08   1.5684E-04   7.9751E-03
    551   6.5181E-08   1.2502E-04   5.6874E-03
    601   5.2117E-08   1.0040E-04   4.0230E-03
    651   4.1859E-08   8.1035E-05   2.8083E-03
    701   3.3736E-08   6.5665E-05   1.9213E-03
    751   2.7261E-08   5.3350E-05   1.2755E-03
    801   2.2071E-08   4.3432E-05   8.0798E-04
    851   1.7895E-08   3.5402E-05   4.7253E-04
    901   1.4420E-08   2.8691E-05   2.3527E-04
    951   8.7592E-09   1.8861E-05   8.1807E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.855E+01 -2.234E+01 -9.411E+00
     Maxval=  9.531E-02 -4.898E+00 -1.139E+00
 1.00 3..2.+....+....+....+....+....+....+....+....+....+
      .  3 2                                            .
 0.90 +    3  2  2                                      +
      .       3    2  2                                 .
 0.80 +          3      2  2  2 2                       +
      .            3               2  2 2  2            .
 0.70 +               3 3                    2  2  2 2  +
      .                    3                            2
 0.60 +                       3                         +
      .                         3                       .
 0.50 +                            3                    +
      .                               3 3               .
 0.40 +                                    3            +
      .                                      3          .
 0.30 +  1                                      3       +
      .    1  1                                         .
 0.20 +          1 1                               3    +
      .               1 1  1  1                      3  .
 0.10 +                         1  1  1 1               +
      .                                    1 1  1  1 1  .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 11:03:58 on Tuesday, 24 June 2025                              
 Run completed at 11:06:41 on Tuesday, 24 June 2025                            
 CPU time of run 164 s
 This includes 164 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 8.099E-06
 ************************************************************
