% Coded by: Cem Berk Senel
% for Nature Chicxulub Impact manuscript
% Reference Systems & Planetology Department, Royal Observatory of Belgium
% June 10, 2022

% Figure 3
clear; clc; close all;

load data_figure3.mat;

ll=linspace(-4,25,29*365)';
ha = tight_subplot(4,1,[.07 .07],[.05 .03],[.08 .03]);
%
axes(ha(1))
plot(ll,ts_o_dust-tref,'color',[251,163,26]./255,'linew',3); hold on;
plot(ll,ts_o_sulfur-tref,'-c','linew',3); hold on;
plot(ll,ts_o_soot-tref,'color',[.7 .7 .7],'linew',3); hold on;
plot(ll,ts_o_chicxulub-tref,'-k','linew',4); hold on;
ylim([-10 25]); yticks(-10:5:25);
xlim([-2 25]); xticks(-4:1:25);
hy=ylabel('\bf [\circC]'); %hx=xlabel('\bf time after impact [yrs]');
title('\bf Global-average surface temperature');
%
axes(ha(2))
semilogy(ll,cd_o_dust,'color',[251,163,26]./255,'linew',3); hold on;
semilogy(ll,cd_o_sulfur,'-c','linew',3); hold on;
semilogy(ll,cd_o_soot,'color',[.7 .7 .7],'linew',3); hold on;
semilogy(ll,cd_o_chicxulub,'-k','linew',4); hold on;
ylim([1e1 1e18]); yticks([1e2 1e4 1e6 1e8 1e10 1e12 1e14 1e16]);
xlim([-2 25]); xticks(-4:1:25);
hy=ylabel('\bf [kg]'); %hx=xlabel('\bf time after impact [yrs]');
title('\bf Global column-integrated fine-grained ejecta mass');
legend('Dust','Sulfur','Soot','Combined','location','east');
%
axes(ha(3))
plot(ll,glw_o_dust,'color',[251,163,26]./255,'linew',3); hold on;
plot(ll,glw_o_sulfur,'-c','linew',3); hold on;
plot(ll,glw_o_soot,'color',[.7 .7 .7],'linew',3); hold on;
plot(ll,glw_o_chicxulub,'-k','linew',4); hold on;
xlim([-2 25]); xticks(-4:1:25);
ylim([100 400]);
hy=ylabel('\bf [W/m^2]'); %hx=xlabel('\bf time after impact [yrs]');
title('\bf Global-average surface downward longwave radiation');
%
axes(ha(4))
plot(ll,gfpar_o_dust,'color',[251,163,26]./255,'linew',3); hold on;
plot(ll,gfpar_o_sulfur,'-c','linew',3); hold on;
plot(ll,gfpar_o_soot,'color',[.7 .7 .7],'linew',3); hold on;
plot(ll,gfpar_o_chicxulub,'-k','linew',4); hold on;
xlim([-2 25]); xticks(-4:1:25);
ylim([-10 110]); yticks(0:20:100);
hy=ylabel('\bf [W/m^2]'); hx=xlabel('\bf Time after impact [yrs]');
title('\bf Global-average photosynthetic active radiation (PAR)');

set(gcf,'paperunits','inches') 
set(gcf, 'PaperPositionMode','manual');
set(gcf,'papersize',[15,18])
set(gcf,'paperposition',[0,0,15,18])
set(findall(gcf,'-property','FontSize'),'FontSize',20)
print('data_figure3.png','-dpng','-r300');
