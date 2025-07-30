%% Es 1
% Input data (lengths in meters)
B = 0.5;        %channel width
D = 0.06;       %cylinder diameter
L = 0.185;      %cylinder width
t = 0.002;      %endplates thickness
b = 0.18;       %endplates length
h = 0.45;       %water level in channel upstream of cylinder
h_b = 0.18;     %distance of cylinder wall from channel bottom
f_s = 200;      %Hz of channel frequency
Q = 75/1000;    %m^3/s volumetric flow rate of water
rho = 998;      %kg/m^3 density
mu = 0.001;     %Pa⋅s dynamic viscosity of water

% Calculate bulk velocity
U_b = Q /(B*h)      %0.333333
% Assume this is the free stream velocity approaching the cylinder
U_inf = U_b;         
%Reynolds number
Re = D*U_inf*rho/mu %1.996e4

%% Es 2
% Calculate the Buoyancy force acting on immersed parts
% It is just given as mean of F_y in the static case
%load("FORCEdata_stillwater.mat")
format long
F_b = mean(Fy)      %7.323576989365185
figure()
plot(1:length(Fy), Fy, '-.')
%% Es 3
load("FORCEdata_flow.mat")
% R-A drag and lift force (time average of drag and lift forces)
F_d = mean(Fx)      %0.922340332590902
F_l = mean(Fy-F_b)  %-0.017207126337817
% R-A drag and lift coefficients
A = D*L;            %projected area of the cylinder (endplates negligible)
denom = 0.5*rho*U_inf^2*A;
C_d = F_d/denom     %1.498684394612310
C_l = F_l/denom     %-0.027959366849077

figure()
plot(1:length(Fy), Fy-F_b)

%% Es 4
% Calculate uncertainty of C_d and C_l using error propagation law
% The coefficients depend on F_d (F_l), rho, A = D ⋅ L, U_inf = Q /(B*h)

%uncertainty on F_d and F_l (given)
u_F_d = 0.045;
u_F_l = 0.045;

%uncertainty on rho: negligible

%uncertainty on A
u_D = 0.00005;      %since 0.05mm is the scale value(sensibility) of the Vernier caliber
u_L = 0.001;        %1mm is the sensibility of the ruler

%uncertainty on U_inf
D_pipe = 0.2;
A_pipe = (D_pipe/2)^2 * pi; 
u_Q = 0.05*Q + 0.001 * A_pipe;       %we found a 5% error on the measure + 1mm/s error from the velocity (Q = A ⋅ v)
u_B = 0.001;        %1mm is the sensibility of the ruler
u_h = 0.001;        %1mm is the sensibility of the piezometer

%dependency of C_d and C_l from all the input parameters (partial
%derivatives) (der_rho not calculated since it has no uncertainty)
der_F_d = B^2*h^2/(0.5*rho*Q^2*D*L);
der_F_l = B^2*h^2/(0.5*rho*Q^2*D*L);

% All next derivatives should be multiplied either by F_d or F_l (depending
% on the coefficient C_d or C_l)
der_B   = 2*B*h^2/(0.5*rho*Q^2*D*L);    
der_h   = 2*h*B^2/(0.5*rho*Q^2*D*L);
der_Q   = h^2*B^2/(0.5*rho*Q^3*D*L)*(-2);
der_D   = h^2*B^2/(0.5*rho*Q^2*D^2*L)*(-1);
der_L   = h^2*B^2/(0.5*rho*Q^2*D*L^2)*(-1);

%error propagation formula
u_C_d = sqrt((u_F_d*der_F_d)^2 + F_d^2*((u_D*der_D)^2 + (u_L*der_L)^2 + (u_Q*der_Q)^2 + (u_B*der_B)^2 + (u_h*der_h)^2))     %0.168322202951413
u_C_l = sqrt((u_F_l*der_F_l)^2 + F_l^2*((u_D*der_D)^2 + (u_L*der_L)^2 + (u_Q*der_Q)^2 + (u_B*der_B)^2 + (u_h*der_h)^2))     %0.073173896971498
 

%% Es 5
% Use the function provided to compute the fast fourier transform of F_l
%load("FORCEdata_flow.mat")
signal_force = Fy-F_b;
[freq,force_fft] = fft_of_force(signal_force,f_s);
[~, peak_idx] = max(force_fft)      
f_vortex = freq(peak_idx)           %1.007977834041943
% Strouhal number
Sr = f_vortex*D/U_b                 %0.181436010127550

% Compare it with the reference for the unbounded case
1/sqrt(Re)      %0.007078149503988
% in the literature for unbounded domain, for such Re we get Sr = 0.195
% circa so comparable
abs((0.181-Sr))/mean([0.181, Sr])*100    %0.240599783336306
%% Es 6
load("FORCEdata_NatOsc.mat")
signal_force = Fx;
[freq,force_fft] = fft_of_force(signal_force,f_s);

% Identify the natural frequences (where there are peaks of the signal)
f_nat = [];
max_force = max(force_fft);
for i = 1:length(force_fft)
    if (force_fft(i)>0.9*max_force)
        f_nat = [f_nat, freq(i)];
    end
end
f_nat   %0.020700966575901   0.027070494753101   0.062102899727703   0.093950540613704

% All of these frequencies are very distant from the f of previous
% exercise
% A rule of thumb to accept no resonance is rel_dist > 0.2:
rel_dist = zeros(size(f_nat));
for i = 1:length(rel_dist)
    rel_dist(i) = abs(f_vortex - f_nat(i))/f_nat(i);
end

rel_dist %47.692307692307693  36.235294117647065  15.230769230769232   9.728813559322036

%% Es 7 (optional)

% Provide an estimate of the errors in the force coefficients ⟨CD⟩ and ⟨CL⟩ due to a
% different water level in the static and dynamic tests (assume Δh=2 mm, for example)
delta_h = 0.002;    %m
%delta h affects the Buoyancy force (more of the endplates is underwater)
delta_volume = 2 * 0.180 * 0.002 * delta_h; %m^3
delta_F_b = rho*9.81*delta_volume;

%This force error only affects the forces on the y-component
%hence the lift force so the lift coefficient
%(drag coeff. not affected if the water level change is symmetric and
%doesn't introduce any horizontal forces or flow changes)
delta_C_l = delta_F_b/(0.5*rho*U_inf^2*A)   %0.022907675675676

%percentage error
rel_err = abs(delta_C_l)/abs(C_l)*100     %81.9320258549846
