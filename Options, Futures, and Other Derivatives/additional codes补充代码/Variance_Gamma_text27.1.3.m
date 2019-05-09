% asset price variance-Gamma process versus geometric Brownian motion

%function St=Variance_Gamma(Time,Variance,Skewness,Riskless_rate,Asset_yeild,S0,Sigma,sample_size)
%if nargin==0
    Time=0.5;
    Variance=0.5;
    Skewness=0.1;
    %Skewness=-0.1;
    Riskless_rate=0;
    Asset_yeild=0;
    S0=100;
    Sigma=0.2;
    sample_size=10000;
%end

%   gampdf(x,a,b):returns the gamma probability density function with
%   shape and scale parameters A and B, respectively, at the values in X.
%   Some references refer to the gamma distribution with a single
%   parameter.  This corresponds to the default of B = 1.
% [x,xlo,xup] = gaminv(p,a,b,pcov,alpha):Inverse of the gamma cumulative distribution %function (cdf).
%   X = GAMINV(P,A,B) returns the inverse cdf for the gamma distribution
%   with shape A and scale B, evaluated at the values in P.

% x=norminv(p,mu,sigma),p???????,mu???,sigma???
% X = logninv(P,MU,SIGMA) returns values at P of the inverse lognormal 
%cdf with distribution parameters MU and SIGMA

%S_T=zeros(1,sample_size);
rand_array1=rand(1,sample_size);
rand_array2=rand(1,sample_size);
rand_array3=rand(1,sample_size);
omiga=Time/Variance*log(1-Skewness*Variance-Sigma^2*Variance/2);
% S_T in variance-Gamma process
g=gaminv(rand_array1,Time/Variance,Variance);
g_multi_Skewness=g*Skewness+Sigma*sqrt(g).*norminv(rand_array2,0,1);
S_T=S0*exp((Riskless_rate-Asset_yeild)*Time+omiga+g_multi_Skewness);

% S_T1 in geometric Brownian motion
S_T1=S0*exp((Riskless_rate-Asset_yeild-Sigma^2/2)*Time+Sigma*norminv(rand_array3)*sqrt(Time));
%S_T1=S0*exp((Riskless_rate-Asset_yeild-Sigma^2/2)*Time+Sigma*normrnd(0,Time,1,sample_size));

% plot two pdfs
%xmax1=max(S_T1);
%xmin1=min(S_T1);
%xi1=linspace(xmin1,xmax1,400);
%xmax=max(S_T);
%xmin=min(S_T);
%xi=linspace(xmin,xmax,400);
%[pro_S_T1,S_T1_quantile]=ksdensity(S_T1,xi1);
%[pro_S_T,S_T_quantile]=ksdensity(S_T,xi);
[pro_S_T1,S_T1_quantile]=ksdensity(S_T1);
[pro_S_T,S_T_quantile]=ksdensity(S_T);
figure1=figure();
bar(S_T1_quantile,pro_S_T1) %?????
figure2=figure();
bar(S_T_quantile,pro_S_T) 
figure3=figure();
plot(S_T1_quantile,pro_S_T1,'--+b')
hold on
plot(S_T_quantile,pro_S_T,'--or')
legend('geometric Brownian motion','variance-Gamma process')
title('asset price variance-Gamma process versus geometric Brownian motion','fontsize',16)
xlabel('asset price','fontsize',16)
ylabel('probability','fontsize',16)
grid minor
hold off

%St=S_T;

%c_Europian_random=exp(-r*T)*max(S_T-K,0);
%c_Europian=mean(c_Europian_random)
%c_Europian_standard_error=var(c_Europian_random)/n
