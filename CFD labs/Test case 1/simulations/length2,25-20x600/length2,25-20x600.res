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
 biggest cell volume divided by average is     1.41157035638417       at:
 ix = 1 iy = 10 iz = 61
 xg =0.5 yg =0.058296 zg =0.3025
 smallest cell volume divided by average is   0.144977520070869       at:
 ix = 1 iy = 1 iz = 314
 xg =0.5 yg =3.686786E-03 zg =1.5675
 ratio of smallest to biggest is   0.102706549067975     
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
 YFRAC(1)=0.098314 ;YFRAC(4)=0.372011
 YFRAC(7)=0.610508 ;YFRAC(10)=0.80755
 YFRAC(13)=0.951314
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 450
 ZWLAST =2.25
 ZFRAC(1)=2.222222E-03 ;ZFRAC(91)=0.202222
 ZFRAC(181)=0.402222 ;ZFRAC(271)=0.602222
 ZFRAC(361)=0.802222
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
 IXMON = 1 ;IYMON = 15 ;IZMON = 405
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
    3.687E-03   2.462E-02   4.297E-02   5.830E-02   6.982E-02

 Z-coordinates of the cell centres
    2.500E-03   4.525E-01   9.025E-01   1.353E+00   1.803E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    7.374E-03   2.790E-02   4.579E-02   6.057E-02   7.135E-02

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
     P1     2.469E+00   8.680E-09      2.143E-08
     V1     3.604E+00   2.514E-05      9.062E-05
     W1     3.604E+00   1.716E-04      6.186E-04
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.935E-03   6.683E+02      1.820E-02 (    1,    6,  388)
     V1     2.586E-06   1.124E-03     -9.741E-02 (    1,    4,  409)
     W1     3.408E-05   8.922E-01      1.547E-02 (    1,    1,  445)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-6.935970E-04
 pos. sum=0. neg. sum=-6.93597E-04
 nett sum=-6.93597E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 5.182642E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-6.880566E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.479311E+00
 pos. sum=0.518264 neg. sum=-2.167367
 nett sum=-1.649103
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 1.151698E+00
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-1.151698E+00 (Mass Out -1.151698E+00 In 0.000000E+00)
 pos. sum=1.151698 neg. sum=-1.151698
 nett sum=7.349676E-14
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       1.151698E+00 -1.151698E+00  7.349676E-14
       V1       0.000000E+00 -6.935970E-04 -6.935970E-04
       W1       5.182642E-01 -2.167367E+00 -1.649103E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 15 IZMON= 405 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   0.0000E+00   1.0000E-10
     51   7.4132E+01   0.0000E+00   2.3810E-02
    101   6.2506E+01   0.0000E+00   2.0055E-02
    151   5.7197E+01   0.0000E+00   1.8474E-02
    201   5.4081E+01   0.0000E+00   1.7587E-02
    251   5.2027E+01   0.0000E+00   1.7021E-02
    301   5.0582E+01   0.0000E+00   1.6633E-02
    351   4.9523E+01   0.0000E+00   1.6353E-02
    401   4.8726E+01   0.0000E+00   1.6146E-02
    451   4.8114E+01   0.0000E+00   1.5989E-02
    501   4.7640E+01   0.0000E+00   1.5868E-02
    551   4.7269E+01   0.0000E+00   1.5774E-02
    601   4.6977E+01   0.0000E+00   1.5701E-02
    651   4.6746E+01   0.0000E+00   1.5644E-02
    701   4.6563E+01   0.0000E+00   1.5598E-02
    751   4.6418E+01   0.0000E+00   1.5562E-02
    801   4.6303E+01   0.0000E+00   1.5534E-02
    851   4.6211E+01   0.0000E+00   1.5511E-02
    901   4.6138E+01   0.0000E+00   1.5493E-02
    951   4.6082E+01   0.0000E+00   1.5480E-02
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00  0.000E+00  1.000E-10
     Maxval=  7.413E+01  0.000E+00  2.381E-02
     Cellav=  4.816E+01  0.000E+00  1.591E-02
 1.00 +..3.+....+....+....+....+....+....+....+....+....+
      .                                                 .
 0.90 +                                                 +
      .    3                                            .
 0.80 +       3                                         +
      .       1  3                                      .
 0.70 +            3  3 3  3                            +
      .                 1  1  3 3  3  3 3  3 3  3  3 3  3
 0.60 +                                         1  1 1  1
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
 0.00 3..2.2..2.+2.2.+2.2.+2..2+2..2+.2.2+.2.2+.2..2.2..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.9043E-10   3.2026E-01
     51   1.9825E-06   6.7275E-03   2.9201E-01
    101   1.0533E-06   3.0114E-03   1.6333E-01
    151   6.6471E-07   1.6309E-03   1.0454E-01
    201   4.5663E-07   1.0159E-03   6.9851E-02
    251   3.3001E-07   7.0064E-04   4.9281E-02
    301   2.4507E-07   5.1699E-04   3.5218E-02
    351   1.8565E-07   3.9635E-04   2.5396E-02
    401   1.4261E-07   3.1039E-04   1.8407E-02
    451   1.1067E-07   2.4630E-04   1.3368E-02
    501   8.6514E-08   1.9715E-04   9.7024E-03
    551   6.7999E-08   1.5875E-04   7.0206E-03
    601   5.3662E-08   1.2839E-04   5.0532E-03
    651   4.2478E-08   1.0416E-04   3.6092E-03
    701   3.3702E-08   8.4688E-05   2.5509E-03
    751   2.6786E-08   6.8971E-05   1.7776E-03
    801   2.1317E-08   5.6257E-05   1.2154E-03
    851   1.6983E-08   4.5932E-05   8.0935E-04
    901   1.3541E-08   3.7521E-05   5.1862E-04
    951   1.0803E-08   3.0655E-05   3.1285E-04
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.834E+01 -2.196E+01 -8.070E+00
     Maxval=  9.531E-02 -5.002E+00 -1.139E+00
 1.00 3..3.+....+....+....+....+....+....+....+....+....+
      .    2                                            .
 0.90 +    3  2  2                                      +
      .       3    2  2 2                               .
 0.80 +          3         2  2 2  2                    +
      .            3                  2 2  2 2          .
 0.70 +               3                         2  2 2  2
      .                 3                               .
 0.60 +                    3                            +
      .                       3                         .
 0.50 +                         3                       +
      .                            3                    .
 0.40 +                               3                 +
      .                                 3               .
 0.30 +  1                                 3            +
      .    1                                 3          .
 0.20 +       1  1 1                            3       +
      .               1 1  1  1                    3    .
 0.10 +                         1  1  1                 +
      .                                 1  1 1  1    3  .
 0.00 2....+....+....+....+....+....+....+....+....1.1..3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 11:16:58 on Tuesday, 24 June 2025                              
 Run completed at 11:19:34 on Tuesday, 24 June 2025                            
 CPU time of run 156 s
 This includes 156 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 7.704E-06
 ************************************************************
