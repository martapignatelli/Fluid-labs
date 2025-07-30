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
 Number used before BFC allowance is                         187037
 Number used after BFC allowance is                          187037
 biggest cell volume divided by average is     1.41159152919841       at:
 ix = 1 iy = 10 iz = 216
 xg =0.5 yg =0.058296 zg =1.61625
 smallest cell volume divided by average is   0.144979694853288       at:
 ix = 1 iy = 1 iz = 154
 xg =0.5 yg =3.686786E-03 zg =1.15125
 ratio of smallest to biggest is   0.102706549206636     
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
 
 TEXT(y1                                      )
 
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
 PATCH(OB1 ,LOW , 1, 1, 1, 15, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,409.5 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.45 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 15, 300, 300, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 15, 15, 1, 300, 1, 1)
 COVAL(OB3 ,W1 ,1. ,0. )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 5000 ;ISWC1 = 1
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
 IXMON = 1 ;IYMON = 15 ;IZMON = 270
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 5000 ;NUMCLS = 5
 NYPRIN = 3 ;IYPRF = 1 ;IYPRL = 15
 NZPRIN = 60 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 5000 ;NPLT = 250
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
    3.750E-03   4.537E-01   9.037E-01   1.354E+00   1.804E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    7.374E-03   2.790E-02   4.579E-02   6.057E-02   7.135E-02

 Z-coordinates of the (higher) cell faces
    7.500E-03   4.575E-01   9.075E-01   1.358E+00   1.807E+00

 
 Total number of F-array elements used is                    187723
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep   817 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 818
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 818
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     2.469E+00   4.618E-10      1.140E-09
     V1     3.590E+00   2.288E-06      8.216E-06
     W1     3.590E+00   9.682E-06      3.476E-05
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     2.819E-04   6.429E+02      2.273E-02 (    1,    6,  288)
     V1     6.663E-07   1.618E-03     -8.626E-02 (    1,    4,  300)
     W1     2.764E-06   8.930E-01      1.547E-02 (    1,    1,  288)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-7.455844E-04
 pos. sum=0. neg. sum=-7.455844E-04
 nett sum=-7.455844E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 5.182642E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-6.881507E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-1.472925E+00
 pos. sum=0.518264 neg. sum=-2.161076
 nett sum=-1.642812
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 1.151698E+00
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-1.151698E+00 (Mass Out -1.151698E+00 In 0.000000E+00)
 pos. sum=1.151698 neg. sum=-1.151698
 nett sum=3.996803E-15
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   818
    Variable      Inflow        Outflow       Nett
       P1       1.151698E+00 -1.151698E+00  3.996803E-15
       V1       0.000000E+00 -7.455844E-04 -7.455844E-04
       W1       5.182642E-01 -2.161076E+00 -1.642812E+00
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 15 IZMON= 270 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   0.0000E+00   0.0000E+00   1.0000E-10
    251   4.9209E+01   0.0000E+00   1.6349E-02
    501   4.6489E+01   0.0000E+00   1.5600E-02
    751   4.6077E+01   0.0000E+00   1.5481E-02
   Variable    1 = P1     2 = V1     3 = W1  
     Minval=  0.000E+00  0.000E+00  1.000E-10
     Maxval=  4.921E+01  0.000E+00  1.635E-02
     Cellav=  3.544E+01  0.000E+00  1.186E-02
 1.00 +....+....+....+.3..+....+....+....+....+....+....+
      .                                3                3
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
 0.00 3....+....+....+.2..+....+....+..2.+....+....+....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 7.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1  
      1   1.1000E+00   2.9043E-10   3.2026E-01
    251   2.4849E-07   4.0307E-04   2.5580E-02
    501   4.5880E-08   7.6319E-05   2.5869E-03
    751   7.8967E-09   1.4023E-05   6.5697E-05
   Variable    1 = P1     2 = V1     3 = W1  
     Minval= -1.866E+01 -2.196E+01 -9.630E+00
     Maxval=  9.531E-02 -7.816E+00 -1.139E+00
 1.00 3....+....+....+.2..+....+....+....+....+....+....+
      .                                                 .
 0.90 +                                2                +
      .                                                 .
 0.80 +                                                 +
      .                                                 2
 0.70 +                3                                +
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                3                .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                1                                +
      .                                                 .
 0.10 +                                1                +
      .                                                 .
 0.00 2....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 7.51E+02
 
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 13:13:05 on Wednesday, 25 June 2025                            
 Run completed at 13:14:50 on Wednesday, 25 June 2025                          
 CPU time of run 105 s
 This includes 105 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 9.508E-06
 ************************************************************
