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
 Number used before BFC allowance is                         126772
 Number used after BFC allowance is                          126772
 biggest cell volume divided by average is     2.04568384069590       at:
 ix = 1 iy = 2 iz = 88
 xg =0.5 yg =0.452288 zg =8.750001
 smallest cell volume divided by average is   0.175690412699600       at:
 ix = 1 iy = 10 iz = 238
 xg =0.5 yg =0.995588 zg =23.749998
 ratio of smallest to biggest is   8.588346312587275E-002
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
 
 TEXT(Length30-10x300                         )
 
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
 YVLAST =1.
 YFRAC(1)=0.339216 ;YFRAC(3)=0.716122
 YFRAC(5)=0.883636 ;YFRAC(7)=0.958087
 YFRAC(9)=0.991176
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 300
 ZWLAST =30.
 ZFRAC(1)=3.333336E-03 ;ZFRAC(61)=0.203333
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
 IXMON = 1 ;IYMON = 9 ;IZMON = 270
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
    1.696E-01   6.407E-01   8.501E-01   9.432E-01   9.846E-01

 Z-coordinates of the cell centres
    5.000E-02   6.050E+00   1.205E+01   1.805E+01   2.405E+01

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    3.392E-01   7.161E-01   8.836E-01   9.581E-01   9.912E-01

 Z-coordinates of the (higher) cell faces
    1.000E-01   6.100E+00   1.210E+01   1.810E+01   2.410E+01

 
 Total number of F-array elements used is                    127433
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 1000
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     4.278E+02   1.344E-07      5.749E-05
     V1     2.748E+02   7.183E-04      1.974E-01
     W1     2.748E+02   4.886E-02      1.343E+01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.693E-02   1.169E+02      4.117E-02 (    1,   10,  141)
     V1     6.309E-06   2.963E-03     -3.156E-02 (    1,    3,  109)
     W1     1.790E-04   5.782E-01      1.337E-02 (    1,    5,  295)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-1.940244E-01
 pos. sum=0. neg. sum=-0.194024
 nett sum=-0.194024
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 9.213584E+01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-1.047850E+02
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-3.613175E+01
 pos. sum=92.135836 neg. sum=-140.916788
 nett sum=-48.780952
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 2.047463E+02
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-2.047463E+02 (Mass Out -2.047463E+02 In 0.000000E+00)
 pos. sum=204.746302 neg. sum=-204.746302
 nett sum=-6.536993E-13
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       2.047463E+02 -2.047463E+02 -6.536993E-13
       V1       0.000000E+00 -1.940244E-01 -1.940244E-01
       W1       9.213584E+01 -1.409168E+02 -4.878095E+01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 9 IZMON= 270 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   9.9999E-11   1.0000E-10
     51   2.0367E+01  -5.6856E-10   1.5988E-01
    101   1.5218E+01  -5.3010E-10   1.1772E-01
    151   1.2820E+01  -1.6566E-10   9.8550E-02
    201   1.1358E+01   1.1851E-10   8.7041E-02
    251   1.0349E+01   3.1141E-10   7.9190E-02
    301   9.6006E+00   4.3549E-10   7.3408E-02
    351   9.0160E+00   5.1260E-10   6.8922E-02
    401   8.5433E+00   5.5742E-10   6.5315E-02
    451   8.1514E+00   5.7958E-10   6.2334E-02
    501   7.8200E+00   5.8569E-10   5.9822E-02
    551   7.5352E+00   5.8068E-10   5.7669E-02
    601   7.2871E+00   5.6833E-10   5.5799E-02
    651   7.0687E+00   5.5144E-10   5.4154E-02
    701   6.8743E+00   5.3194E-10   5.2694E-02
    751   6.6999E+00   5.1107E-10   5.1387E-02
    801   6.5424E+00   4.8965E-10   5.0208E-02
    851   6.3992E+00   4.6821E-10   4.9138E-02
    901   6.2682E+00   4.4713E-10   4.8161E-02
    951   6.1480E+00   4.2672E-10   4.7266E-02
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00 -5.686E-10  1.000E-10
     Maxval=  2.037E+01  5.857E-10  1.599E-01
     Cellav=  8.703E+00  3.256E-10  6.693E-02
 1.00 +..3.+....+....+....+2..2+2..2+.2..+....+....+....+
      .                 2               2  2 2          .
 0.90 +                                         2  2 2  +
      .               2                                 2
 0.80 +                                                 +
      .    3       2                                    .
 0.70 +                                                 +
      .       1                                         .
 0.60 2       3  2                                      +
      .          3                                      .
 0.50 +            3                                    +
      .               3 3                               .
 0.40 +                    3  3 1                       +
      .       2                 3  3  3 3  3 1          .
 0.30 +                                      3  3  3 3  3
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .    2                                            .
 0.00 3..2.+....+....+....+....+....+....+....+....+....+
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   1.9856E-08   9.8820E-01
     51   9.2609E-07   3.7106E-03   4.6487E-01
    101   6.4916E-07   2.8060E-03   3.3975E-01
    151   4.9763E-07   2.4017E-03   2.6339E-01
    201   4.2357E-07   2.1284E-03   2.2434E-01
    251   3.7242E-07   1.9120E-03   1.9552E-01
    301   3.3129E-07   1.7336E-03   1.7221E-01
    351   2.9698E-07   1.5850E-03   1.5247E-01
    401   2.6774E-07   1.4580E-03   1.3537E-01
    451   2.4250E-07   1.3476E-03   1.2048E-01
    501   2.2053E-07   1.2507E-03   1.0745E-01
    551   2.0560E-07   1.1649E-03   9.7974E-02
    601   1.9506E-07   1.0893E-03   9.0375E-02
    651   1.8539E-07   1.0220E-03   8.3456E-02
    701   1.7648E-07   9.6306E-04   7.7198E-02
    751   1.6820E-07   9.1065E-04   7.1509E-02
    801   1.6049E-07   8.6434E-04   6.6339E-02
    851   1.5329E-07   8.2286E-04   6.1509E-02
    901   1.4655E-07   7.8489E-04   5.6990E-02
    951   1.4021E-07   7.4997E-04   5.2757E-02
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.578E+01 -1.773E+01 -2.942E+00
     Maxval=  9.531E-02 -5.597E+00 -1.187E-02
 1.00 3..2.2....+....+....+....+....+....+....+....+....+
      .       2  2 2  2 2                               .
 0.90 +                    2  2 2  2  2 2  2 2  2  2    +
      .                                              2  2
 0.80 +                                                 +
      .  3                                              .
 0.70 +                                                 +
      .    3                                            .
 0.60 +                                                 +
      .       3                                         .
 0.50 +          3                                      +
      .            3                                    .
 0.40 +               3                                 +
      .                 3                               .
 0.30 +                    3  3                         +
      .                         3                       .
 0.20 +                            3  3                 +
      .                                 3  3            .
 0.10 +  1 1  1                              3  3       +
      .          1 1  1 1  1  1 1                  3 3  .
 0.00 2....+....+....+....+....+...1+.1.1+.1.1+.1..1.1..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 10:47:48 on Tuesday, 24 June 2025                              
 Run completed at 10:49:28 on Tuesday, 24 June 2025                            
 CPU time of run 100 s
 This includes 100 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 1.111E-05
 ************************************************************
