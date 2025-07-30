%% Basic data
tol=1e-6; %tolerance to evaluate voltage stability
time_vec=zeros(1, 16); % time vector containing the times at which the noise is eliminated
voltages=zeros(1, 16); % voltages calculated
forces=[0.000; -0.314; -0.411; -0.695; -0.891; -1.186; -1.676; -2.656; -5.598; -10.501; 0.126; 1.097; 2.078; 4.039; 8.942; 13.845]'; 
test_num=0; 
fs=100; %sampling frequency 

%% test 1
load('calibr01.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);

max_time=n*(1/fs);

figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;


%% test 2
load('calibr02.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 3
load('calibr03.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 4
load('calibr04.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 5
load('calibr05.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 6
load('calibr06.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 7
load('calibr07.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 8
load('calibr08.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 9
load('calibr09.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 10
load('calibr10.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 11
load('calibr11.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 12
load('calibr12.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 13
load('calibr13.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 14
load('calibr14.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 15
load('calibr15.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end

test_num=test_num+1;

%% test 16 
load('calibr16.mat');
n=length(V);
%calculatine cumulative average
cum_avg=cumulative_avg(n, V);
max_time=n*(1/fs);
figure();
tt=linspace(0, max_time, n);
semilogx(tt, cum_avg, 'r-', 'LineWidth',1);
xlabel('time [s]'); ylabel('cumulative voltage average [V]');

%at which time we are stable?
[ts, found, where]=t_stable(n, cum_avg, tol, tt);
if (found)
    voltages(test_num+1)= cum_avg(where);
    time_vec(test_num+1)=ts; 
else
    voltages(test_num+1)=mean(cum_avg(end-20: end));
    time_vec(test_num+1)=(1/fs)*n;
end


%% deleting useless variables
clear cum_avg, clear where; clear found; clear n;clear  test_num; clear ts; clear tt; clear V; 
