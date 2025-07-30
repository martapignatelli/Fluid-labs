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
   Working directory: C:\Users\marta\OneDrive\Desktop\Lab_tests\CFD1\2ndattempt
 
 ************************************************************
 
 Initial estimated storage requirement is                  10000000
 
 PRPS is not stored
 Material properties used for phase 1 are
 density
 laminar viscosity
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                         126772
 Number used after BFC allowance is                          126772
 biggest cell volume divided by average is     1.40337983197284       at:
 ix = 1 iy = 7 iz = 216
 xg =0.5 yg =0.059351 zg =1.61625
 smallest cell volume divided by average is   0.213691994228315       at:
 ix = 1 iy = 1 iz = 154
 xg =0.5 yg =5.481937E-03 zg =1.15125
 ratio of smallest to biggest is   0.152269534847107     
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
 
 TEXT(Length2,25-10x300                       )
 
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
 NY = 10
 YVLAST =0.075
 YFRAC(1)=0.146185 ;YFRAC(3)=0.414338
 YFRAC(5)=0.646447 ;YFRAC(7)=0.835683
 YFRAC(9)=0.968377
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 300
 ZWLAST =2.25
 ZFRAC(1)=3.333333E-03 ;ZFRAC(61)=0.203333
 ZFRAC(121)=0.403333 ;ZFRAC(181)=0.603333
 ZFRAC(241)=0.803333
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
 PATCH(OB1 ,LOW , 1, 1, 1, 10, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 10, 300, 300, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 10, 10, 1, 300, 1, 1)
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
 IXMON = 1 ;IYMON = 10 ;IZMON = 270
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 1000 ;NUMCLS = 5
 NYPRIN = 2 ;IYPRF = 1 ;IYPRL = 10
 NZPRIN = 60 ;IZPRF = 1 ;IZPRL = 10000
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
    5.482E-03   2.620E-02   4.431E-02   5.935E-02   7.046E-02

 Z-coordinates of the cell centres
    3.750E-03   4.537E-01   9.037E-01   1.354E+00   1.804E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    1.096E-02   3.108E-02   4.848E-02   6.268E-02   7.263E-02

 Z-coordinates of the (higher) cell faces
    7.500E-03   4.575E-01   9.075E-01   1.358E+00   1.807E+00

 
 Total number of F-array elements used is                    127433
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep   745 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 746
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 746
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     2.475E+00   1.591E-09      3.937E-09
     V1     3.562E+00   3.379E-06      1.204E-05
     W1     3.562E+00   9.089E-06      3.238E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     4.904E-04   6.354E+02      3.040E-02 (    1,    4,  288)
     V1     1.384E-06   1.547E-03     -7.550E-02 (    1,    3,  300)
     W1     4.807E-06   8.877E-01      2.826E-02 (    1,    1,  299)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-7.425836E-04
 pos. sum=0. neg. sum=-7.425836E-04
 nett sum=-7.425836E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 5.182642E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-6.866059E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.462245E+00
 pos. sum=0.518264 neg. sum=-2.148851
 nett sum=-1.630587
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 1.151698E+00
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-1.151698E+00 (Mass Out -1.151698E+00 In 0.000000E+00)
 pos. sum=1.151698 neg. sum=-1.151698
 nett sum=7.993606E-15
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   746
    Variable      Inflow        Outflow       Nett
       P1       1.151698E+00 -1.151698E+00  7.993606E-15
       V1       0.000000E+00 -7.425836E-04 -7.425836E-04
       W1       5.182642E-01 -2.148851E+00 -1.630587E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 10 IZMON= 270 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   0.0000E+00   1.0000E-10
     51   6.8589E+01   0.0000E+00   3.9490E-02
    101   5.7828E+01   0.0000E+00   3.3933E-02
    151   5.3224E+01   0.0000E+00   3.1680E-02
    201   5.0663E+01   0.0000E+00   3.0469E-02
    251   4.9067E+01   0.0000E+00   2.9732E-02
    301   4.8012E+01   0.0000E+00   2.9254E-02
    351   4.7292E+01   0.0000E+00   2.8932E-02
    401   4.6791E+01   0.0000E+00   2.8710E-02
    451   4.6439E+01   0.0000E+00   2.8555E-02
    501   4.6189E+01   0.0000E+00   2.8446E-02
    551   4.6011E+01   0.0000E+00   2.8369E-02
    601   4.5885E+01   0.0000E+00   2.8314E-02
    651   4.5819E+01   0.0000E+00   2.8287E-02
    701   4.5855E+01   0.0000E+00   2.8291E-02
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00  0.000E+00  1.000E-10
     Maxval=  6.859E+01  0.000E+00  3.949E-02
     Cellav=  4.651E+01  0.000E+00  2.816E-02
 1.00 +...3+....+....+....+....+....+....+....+....+....+
      .                                                 .
 0.90 +                                                 +
      .      3                                          .
 0.80 +          3                                      +
      .             3   3  3   3   3                    .
 0.70 +                 1  1   1   1  3   3  3   3  3   3
      .                                   1  1   1  1   1
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 3...2+.2..+2..2+..2.+2...2...2+.2..+2..2+..2.+2...2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 7.01E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.6288E-10   3.2026E-01
     51   2.2681E-06   2.9214E-03   2.2059E-01
    101   1.0552E-06   1.1795E-03   1.0598E-01
    151   6.1452E-07   6.6909E-04   6.1476E-02
    201   3.9121E-07   4.4052E-04   3.7163E-02
    251   2.5968E-07   3.0172E-04   2.2816E-02
    301   1.7701E-07   2.1193E-04   1.4105E-02
    351   1.2275E-07   1.5142E-04   8.7062E-03
    401   8.6092E-08   1.0925E-04   5.3215E-03
    451   6.0831E-08   7.9295E-05   3.1929E-03
    501   4.3197E-08   5.7764E-05   1.8592E-03
    551   3.0778E-08   4.2185E-05   1.0317E-03
    601   2.1979E-08   3.0848E-05   5.2689E-04
    651   1.5719E-08   2.2568E-05   2.2652E-04
    701   9.5753E-09   1.4237E-05   5.9397E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.846E+01 -2.206E+01 -9.731E+00
     Maxval=  9.531E-02 -5.836E+00 -1.139E+00
 1.00 3...2+....+....+....+....+....+....+....+....+....+
      .   3  2                                          .
 0.90 +          2  2                                   +
      .      3          2  2                            .
 0.80 +          3             2   2  2                 +
      .             3                     2  2          .
 0.70 +                 3                        2  2   +
      .                    3                            2
 0.60 +                        3                        +
      .                                                 .
 0.50 +                            3                    +
      .                               3                 .
 0.40 +                                   3             +
      .                                      3          .
 0.30 +   1                                             +
      .      1                                   3      .
 0.20 +          1  1   1                               +
      .                    1   1                    3   .
 0.10 +                            1  1   1             +
      .                                      1   1  1   .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 7.01E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 14:41:00 on Tuesday, 24 June 2025                              
 Run completed at 14:42:18 on Tuesday, 24 June 2025                            
 CPU time of run 79 s
 This includes 79 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 1.177E-05
 ************************************************************
