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
   Working directory: C:\Users\marta\OneDrive - Politecnico di Milano\AAAUNI\MAGISTRALE\PRIMO ANNO\FLUID LABS\Lab_tests\CFD2\simulations
 
 ************************************************************
 
 Initial estimated storage requirement is                  10000000
 
 PRPS is not stored
 Material properties used for phase 1 are
 density
 laminar viscosity
 turbulent viscosity
 mixing length
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                         886827
 Number used after BFC allowance is                          886827
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     2.09041800000028       at:
 ix = 1 iy = 11 iz = 895
 xg =0.5 yg =0.0475 zg =2.981667
 smallest cell volume divided by average is   0.135656662716020       at:
 ix = 1 iy = 1 iz = 377
 xg =0.5 yg =2.776425E-03 zg =1.255
 ratio of smallest to biggest is   6.489451521944530E-002
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10. reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of V1   per sweep=   100.000000000000     
 Maximum change of W1   per sweep=   100.000000000000     
 Maximum change of KE   per sweep=   1.00000000000000     
 Maximum change of EP   per sweep=   1000.00000000000     
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 SParsol activated
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(coarse-11x1500                          )
 
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
 NY = 11
 YVLAST =0.05
 YFRAC(1)=0.111057 ;YFRAC(3)=0.323744
 YFRAC(5)=0.521597 ;YFRAC(7)=0.700178
 YFRAC(9)=0.849389 ;YFRAC(11)=1.
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 1500
 ZWLAST =5.
 ZFRAC(1)=6.666667E-04 ;ZFRAC(301)=0.200667
 ZFRAC(601)=0.400667 ;ZFRAC(901)=0.600667
 ZFRAC(1201)=0.800667
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(12)=KE
 NAME(13)=EP ;NAME(143)=DWDZ
 NAME(144)=DWDY ;NAME(145)=YPLS
 NAME(146)=STRS ;NAME(147)=EPKE
 NAME(148)=DEN1 ;NAME(149)=EL1
 NAME(150)=ENUT
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,N)
 SOLUTN(KE,Y,Y,N,N,N,N)
 SOLUTN(EP,Y,Y,N,N,N,N)
 SOLUTN(DWDZ,Y,N,N,N,N,Y)
 SOLUTN(DWDY,Y,N,N,N,N,Y)
 SOLUTN(YPLS,Y,N,N,N,N,Y)
 SOLUTN(STRS,Y,N,N,N,N,Y)
 SOLUTN(EPKE,Y,N,N,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(EL1,Y,N,N,N,N,Y)
 SOLUTN(ENUT,Y,N,N,N,N,Y)
 DEN1 = 148
 VIST = 150
 LEN1 = 149
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 TERMS(KE,N,Y,Y,N,Y,N)
 TERMS(EP,N,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 NEWENT = T
 ISOLX = 0 ;ISOLY = -1 ;ISOLZ = -1
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =998.23 ;TMP1 =0. ;EL1 = GRND4
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =3.41E-03 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 EL1A =0. ;EL1B =0. ;EL1C =0.
 ENUL =1.0E-06 ;ENUT = GRND3
 ENUTA =0. ;ENUTB =0. ;ENUTC =0.
 IENUTA = 0
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRNDTL(KE)=1. ;PRNDTL(EP)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 PRT(KE)=1. ;PRT(EP)=1.314
 CP1 =1005. ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(KE)=5.625E-17
 FIINIT(EP)=1.386463E-23 ;FIINIT(DWDZ)=1.0E-10
 FIINIT(DWDY)=1.0E-10 ;FIINIT(YPLS)=1.0E-10
 FIINIT(STRS)=1.0E-10 ;FIINIT(EPKE)=1.0E-10
 FIINIT(DEN1)=998.23 ;FIINIT(EL1)=1.0E-10
 FIINIT(ENUT)=1.0E-10
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
 PATCH(OB1 ,LOW , 1, 1, 1, 11, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL3         
 PATCH(OB3 ,HIGH , 1, 1, 1, 11, 1500, 1500, 1, 1)
 COVAL(OB3 ,P1 ,1000. ,0. )
 COVAL(OB3 ,V1 ,0. , SAME )
 COVAL(OB3 ,W1 ,0. , SAME )
 COVAL(OB3 ,KE ,0. , SAME )
 COVAL(OB3 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT2         
 PATCH(OB2 ,NWALL , 1, 1, 11, 11, 1, 1500, 1, 1)
 COVAL(OB2 ,W1 , GRND2 ,0. )
 COVAL(OB2 ,KE , GRND2 , GRND2 )
 COVAL(OB2 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 11, 1, 1500, 1, 1)
 COVAL(KESOURCE,KE , GRND4 , GRND4 )
 COVAL(KESOURCE,EP , GRND4 , GRND4 )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 10000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=200 ;LITER(V1)=10
 LITER(W1)=10 ;LITER(KE)=20
 LITER(EP)=20
 ENDIT(P1)=1.0E-03 ;ENDIT(V1)=1.0E-03
 ENDIT(W1)=1.0E-03 ;ENDIT(KE)=1.0E-03
 ENDIT(EP)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(V1,LINRLX,0.5)
 RELAX(W1,LINRLX,0.5)
 RELAX(KE,LINRLX,0.5)
 RELAX(EP,LINRLX,0.5)
 RELAX(DWDZ,LINRLX,1.)
 RELAX(DWDY,LINRLX,1.)
 RELAX(YPLS,LINRLX,1.)
 RELAX(STRS,LINRLX,1.)
 RELAX(EPKE,LINRLX,1.)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(EL1,LINRLX,1.)
 RELAX(ENUT,LINRLX,0.5)
 KELIN = 3
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(KE)=1.0E+10 ;VARMIN(KE)=1.0E-10
 VARMAX(EP)=1.0E+10 ;VARMIN(EP)=1.0E-10
 VARMAX(DWDZ)=1.0E+10 ;VARMIN(DWDZ)=-1.0E+10
 VARMAX(DWDY)=1.0E+10 ;VARMIN(DWDY)=-1.0E+10
 VARMAX(YPLS)=1.0E+10 ;VARMIN(YPLS)=-1.0E+10
 VARMAX(STRS)=1.0E+10 ;VARMIN(STRS)=-1.0E+10
 VARMAX(EPKE)=1.0E+10 ;VARMIN(EPKE)=1.0E-10
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 VARMAX(EL1)=1.0E+10 ;VARMIN(EL1)=1.0E-10
 VARMAX(ENUT)=1.0E+10 ;VARMIN(ENUT)=1.0E-10
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
 SPEDAT(SET,OBJNAM,^OB2,C,PLAT2)
 SPEDAT(SET,OBJTYP,^OB2,C,PLATE)
 SPEDAT(SET,OBJNAM,^OB3,C,OUTL3)
 SPEDAT(SET,OBJTYP,^OB3,C,OUTLET)
 SPEDAT(SET,ARATIO,^OB3,R,1.)
 SPEDAT(SET,OBJNAM,!OB4,C,NULL4)
 SPEDAT(SET,OBJTYP,!OB4,C,NULL)
 SPEDAT(SET,FACETDAT,NUMOBJ,I,4)
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
 OUTPUT(KE,N,N,Y,Y,Y,Y)
 OUTPUT(EP,N,N,Y,Y,Y,Y)
 OUTPUT(DWDZ,N,N,Y,N,N,N)
 OUTPUT(DWDY,N,N,Y,N,N,N)
 OUTPUT(YPLS,N,N,Y,N,N,N)
 OUTPUT(STRS,N,N,Y,N,N,N)
 OUTPUT(EPKE,N,N,Y,N,N,N)
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(EL1,N,N,Y,N,N,N)
 OUTPUT(ENUT,N,N,Y,N,N,N)
 WALPRN = T
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 11 ;IZMON = 1500
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 10000 ;NUMCLS = 5
 NYPRIN = 2 ;IYPRF = 1 ;IYPRL = 11
 NZPRIN = 300 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 10000 ;NPLT = 500
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
    2.776E-03   1.357E-02   2.366E-02   3.285E-02   4.073E-02
    4.750E-02
 Z-coordinates of the cell centres
    1.667E-03   1.002E+00   2.002E+00   3.002E+00   4.002E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    5.553E-03   1.619E-02   2.608E-02   3.501E-02   4.247E-02
    5.000E-02
 Z-coordinates of the (higher) cell faces
    3.333E-03   1.003E+00   2.003E+00   3.003E+00   4.003E+00

 
 Total number of F-array elements used is                    898894
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  3231 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 3232
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 3232
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.914E+00   2.112E-10      4.042E-10
     V1     1.898E+00   2.621E-06      4.975E-06
     W1     1.898E+00   9.802E-06      1.861E-05
     KE     6.955E-02   5.734E-06      3.988E-07
     EP     4.338E-01   2.120E-06      9.199E-07
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     7.220E-05   2.805E+02      5.939E-01 (    1,   11, 1451)
     V1     1.343E-07   2.600E-04     -2.231E-03 (    1,    5, 1476)
     W1     1.060E-06   9.254E-01      5.783E-01 (    1,    1, 1453)
     KE     1.242E-08   6.669E-03      1.000E-10 (    1,    6, 1472)
     EP     3.254E-08   8.729E-02      1.000E-10 (    1,    8, 1464)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB3      (OUTL3       ) =-1.300796E-04
 pos. sum=0. neg. sum=-1.300796E-04
 nett sum=-1.300796E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 7.018679E-01
 Nett source of W1   at patch named: OB3      (OUTL3       ) =-7.123367E-01
 Nett source of W1   at patch named: OB2      (PLAT2       ) =-3.367956E-01
 pos. sum=0.701868 neg. sum=-1.049132
 nett sum=-0.347264
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 9.358238E-01
 Nett source of R1   at patch named: OB3      (OUTL3       ) =-9.358238E-01 (Mass Out -9.358238E-01 In 0.000000E+00)
 pos. sum=0.935824 neg. sum=-0.935824
 nett sum=-6.550316E-15
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 5.264009E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB3      (OUTL3       ) =-2.893124E-03 (Ave Out  3.091529E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB2      (PLAT2       ) =-3.248108E-15
 Nett source of KE   at patch named: KESOURCE                =-3.299558E-02
 Non-linearised source for KE    at: KESOURCE                = 3.302596E-02
 pos. sum=0.033026 neg. sum=-0.035889
 nett sum=-2.862746E-03
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 1.297485E-23 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB3      (OUTL3       ) =-1.238098E-02 (Ave Out  1.323005E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB2      (PLAT2       ) =-5.104952E-14
 Nett source of EP   at patch named: KESOURCE                =-2.334513E-01
 Non-linearised source for EP    at: KESOURCE                = 1.756270E-01
 pos. sum=0.175627 neg. sum=-0.245832
 nett sum=-0.070205
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  3232
    Variable      Inflow        Outflow       Nett
       P1       9.358238E-01 -9.358238E-01 -6.550316E-15
       V1       0.000000E+00 -1.300796E-04 -1.300796E-04
       W1       7.018679E-01 -1.049132E+00 -3.472644E-01
       KE       3.302596E-02 -3.588870E-02 -2.862746E-03
       EP       1.756270E-01 -2.458323E-01 -7.020524E-02
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 11 IZMON= 1500 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   0.0000E+00   0.0000E+00   1.0000E-10   1.0000E-10
    501   5.9838E-01   0.0000E+00  -2.3902E-10   4.5163E-03   4.8668E-02
   1001   5.8517E-01   0.0000E+00  -2.3902E-10   4.3442E-03   4.5896E-02
   1501   5.8911E-01   0.0000E+00  -2.3902E-10   4.3953E-03   4.6706E-02
   2001   5.9368E-01   0.0000E+00  -2.3902E-10   4.4547E-03   4.7658E-02
   2501   5.9394E-01   0.0000E+00  -2.3902E-10   4.4581E-03   4.7714E-02
   3001   5.9384E-01   0.0000E+00  -2.3902E-10   4.4569E-03   4.7693E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00  0.000E+00 -2.390E-10  1.000E-10  1.000E-10
     Maxval=  5.984E-01  0.000E+00  0.000E+00  4.516E-03  4.867E-02
     Cellav=  5.077E-01  0.000E+00 -2.049E-10  3.804E-03  4.062E-02
 1.00 3....+..5.+....+.1..+....1....+..5.+....+.5..+....5
      .                5       5                        .
 0.90 +                                                 +
      .                                                 .
 0.80 +                                                 +
      .                                                 .
 0.70 +                                                 +
      .                                                 .
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
 0.00 5....+..3.+....+.3..+....3....+..3.+....+.3..+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 3.00E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   8.6298E-11   3.8952E-01   5.2855E-10   9.5096E-10
    501   1.1126E-07   3.8579E-04   1.1341E-01   1.1882E-01   4.4261E-02
   1001   2.7739E-08   2.7759E-04   2.7359E-02   5.0187E-02   1.2453E-02
   1501   1.3504E-08   1.9908E-04   7.2631E-03   1.8048E-02   3.7533E-03
   2001   6.9535E-09   7.8494E-05   2.9973E-03   2.8536E-03   1.0695E-03
   2501   1.1548E-09   2.6641E-05   4.7463E-04   6.7038E-04   2.2505E-04
   3001   4.9741E-10   5.7044E-06   5.7080E-05   3.0528E-05   1.2361E-05
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.142E+01 -2.317E+01 -9.771E+00 -2.136E+01 -2.077E+01
     Maxval=  9.531E-02 -7.860E+00 -9.428E-01 -2.130E+00 -3.118E+00
 1.00 3....+..5.+....+.2..+....+....+....+....+....+....+
      .                5       2                        .
 0.90 +                        4       2                +
      .       3                5                2       .
 0.80 +                                5                +
      .                                         4       .
 0.70 +                3                        5       2
      .                                                 .
 0.60 +                                                 +
      .                        3                        5
 0.50 +                                                 +
      .                                3                .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .       1                                 3       .
 0.20 +                1                                +
      .                        1                        .
 0.10 +                                1                +
      .                                         1       .
 0.00 5....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 3.00E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB2      and  IX=     1
 IY=    11  3.562E-03  3.798E-03  3.804E-03  3.790E-03  3.779E-03
 IZ=          1        301        601        901       1201
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 19:25:45 on Thursday, 10 July 2025                             
 Run completed at 19:42:14 on Thursday, 10 July 2025                           
 CPU time of run 988 s
 This includes 988 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 3.705E-06
 ************************************************************
