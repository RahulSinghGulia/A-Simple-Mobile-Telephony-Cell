function [Rx] = RxPower(Pt, Gt, Gr, fc, beta, LOS, dist)
% input:


% output:

lambda = 3e8/fc;

% Rx'd power at distance = 1m
alpha = Pt*Gt*Gr*(lambda/(4*pi))^2;


if LOS==1
    Rx = alpha*(1/dist)^beta; % Rx'd power at LOS
else
    Rx = (alpha*(1/dist)^beta)*(0.001); % Rx'd power at NLOS

end