function [fitresult, gof] = createFit(wlvec, tvec, zdata)
%CREATEFIT(WLVEC,TVEC,ZDATA)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : wlvec
%      Y Input : tvec
%      Z Output: zdata
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 28-Aug-2015 18:47:18


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( wlvec, tvec, zdata );

% Set up fittype and options.
ft = fittype( 'poly52' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'untitled fit 1', 'zdata vs. wlvec, tvec', 'Location', 'NorthEast' );
% Label axes
xlabel wlvec
ylabel tvec
zlabel zdata
grid on
view( 0.5, 38.0 );

