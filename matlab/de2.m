function Hd = de2
%DE2 Returns a discrete-time filter object.

%
% MATLAB Code
% Generated by MATLAB(R) 8.0 and the DSP System Toolbox 8.3.
%
% Generated on: 10-Nov-2012 20:02:02
%

% FIR Window Raised-cosine filter designed using the FIRRCOS function.

% All frequency values are normalized to 1.

N    = 16;             % Order
Fc   = 0.14285714286;  % Cutoff Frequency
TM   = 'Rolloff';      % Transition Mode
R    = 0.8;            % Rolloff
DT   = 'Normal';       % Design Type
Beta = 0.5;            % Window Parameter

% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);

% Calculate the coefficients using the FIR1 function.
b  = firrcos(N, Fc, R, 2, TM, DT, [], win);
Hd = dfilt.dffir(b);

% [EOF]
