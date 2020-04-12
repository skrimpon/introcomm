%% Lab 1: Passband modulation
%
% In this lab, you will learn how to:
%
% * Create deterministic complex baseband signals;
% * Simulate up and down-conversion;
% * Design a simple baseband filter;
% * Visualize the effects of filtering and downconversion.
%
% *Instructions*:  Complete all the sections labeled |% TODO|. In the last
% subsection you need to write your observations for the above sections.
% For NYU students when you finish you need to publish the file to create a
% PDF. Submit the PDF in NYU Classes. Do not submit the MATLAB files.
%% 0. Clear the command window, the workspace and close all figure
clc;		% Clear the command window
clear;		% Clear all variables and functions from memory
close all;	% Close all figure
%% 1. Set parameters for the simulations
% First, we will define the sample frequency |fsamp|, the number of time
% domain samples |nsmap|, and the number of frequency domain samples
% |NFFT|
fsamp = 20e3;	% fsamp = 20KHz
nsamp = 2^16;
NFFT = 2^(ceil(log2(nsamp)));

% TODO: Then, create a time vector |t| and a frequency vector |f| that we 
% will use in our plots. You can use the MATLAB command 'linspace'.
%
% * |t|: the dimensions should be |nsamp x 1| and should have values 
% between [0, (nsamp-1)/fsamp] taking one sample every 1/fsamp.
% * |f|: the dimensions should be |NFFT x 1| and should have values between 
% [-fsamp/2, fsamp/2] taking one sample every 1/NFFT.
%
%	t = ...;
%	f = ...;

%% 2. Create some real baseband signals

% TODO: Generate a rectangular pulse x(t) using the MATLAB command 
% 'rectpuls'. The pulse should have the following specifications:
%
% * Amplitude |A|: 2
% * Width |W|: 0.020 sec or 20 ms
% * Delay |d|: 0 sec
%
% Note that 'rectpuls' generates a pulse in the [-|W|/2,|W|/2]. So if you 
% want a pulse in [0, |W|] you should shift the time vector |t| by -|W|/2
% in the 'rectpuls' argument.
%
%	xt = ...;

% TODO: Plot x(t) over the time vector |t|. Use the MATLAB command 'xlim'
% to zoom in the first 0.1 sec.
%
%	figure();
%	subplot(2, 1, 1);
%	plot(...);

% TODO: Calculate the N-point DFT transform of x(t). You should use the 
% MATLAB command 'fft'. Another useful MATLAB command is 'fftshift' which
% shifts the zero-frequency component to the middle of the spectrum. Then, 
% normalize the signal's Fourier transform, by the number of frequency 
% samples |NFFT|.
%
%	Xf = ...;

% TODO: Plot the magniture of X(f) over the frequency vector |f|. Don't 
% forget to use abs. Use the MATLAB command 'xlim' to zoom in [-500, 500] 
% Hz
%
%	subplot(2, 1, 2);
%	plot(...);

% TODO: Generate a triangular pulse y(t) using the MATLAB command 
% 'tripuls'. The pulse should have the following specifications:
%
% * Amplitude |A|: 2
% * Width |W|: 0.020 sec or 20 ms
% * Delay |d|: 0 sec
%
% Note that 'tripuls' generates a pulse in the [-|W|/2,|W|/2]. So if you 
% want a pulse in [0, |W|] you should shift the time vector |t| by -|W|/2
% in the 'tripuls' argument.
%
%	yt = ...;

% TODO: Plot y(t) over the time vector |t|. Use the MATLAB command 'xlim'
% to plot only the first 0.1 sec.
%
%	figure();
%	subplot(2, 1, 1);
%	plot(...);

% TODO: Calculate the N-point DFT transform of y(t). You should use the 
% MATLAB command 'fft'. Another useful MATLAB command is 'fftshift' which
% shifts the zero-frequency component to the middle of the spectrum. Then, 
% normalize the signal's Fourier transform, by the number of frequency 
% samples |NFFT|.
%
%	Yf = ...;

% TODO: Plot the magniture of Y(f) over the frequency vector |f|. Don't 
% forget to use abs. Use the MATLAB command 'xlim' to zoom in [-500, 500] 
% Hz
%
%	subplot(2, 1, 2);
%	plot(...);

%% 3. Create a complex baseband signal
% TODO: Using the above functions, we can create a complex baseband signal 
% u(t) a follows: u(t) = ui(t) + i*uq(t). Where ui(t) is the in-phase 
% component, and uq is the quadrature-phase component.
%
% ui(t): A rectangular pulse with the following parameters:
%
% * Amplitude |A|: 2
% * Width |W|: 0.010 sec or 10 ms
% * Delay |d|: 0.015 sec or 15 ms
%
% uq(t): A triangular pulse with the following parameters:
%
% * Amplitude |A|: 4
% * Width |W|: 0.020 sec or 20 ms
% * Delay |d|: 0 ms
%
%     ui = ...;
%     uq = ...;

% TODO: Visualize the |ui|, |uq| and convex envelope abs(|u|) over the time
% vector |t|. Use the MATLAB function xlim to zoom in the first 0.05 sec.
%
%	figure();
%	subplot(3, 1, 1);
%	plot(...);
%	subplot(3, 1, 2);
%	plot(...);
%	subplot(3, 1, 3);
%	plot(...);

% TODO: Visualize the spectrum of |u| by taking the N-point DFT transform.
% Then,  normalize the signal's Fourier transform, by the number of 
% frequency samples |NFFT|. Plot the magniture of U(f) over the frequency 
% vector |f|. Don't forget to use the MATLAB commands 'abs', and 
% 'fftshift'. Use the MATLAB command 'xlim' to zoom in [-1000, 1000] Hz.
%
%	figure();
%	plot(...);

%% 3. Up-convert the complex baseband signal
% TODO: Create a real passband signal by mixing the complex baseband |u|
% with a local oscilator at |fc|. This can be done by modulating the
% in-phase component with |cos(2 pi fc t)| and the quadrature-phase with
% |-sin(2 pi fc t)|. This, process is taking place at the transmitter.
fc = 2e3;	% Carrier frequency: 2 KHz

%	uicos = ...;
%	uqsin = ...;
%	up = uicos + uqsin;		% passband signal

% TODO: Visualize the |uicos|, |uqsin| and real passband |up| over the time
% vector |t|. Overlap the signals with |ui|, |uq| and abs(|u|) 
% respectively. Use the MATLAB function xlim to zoom in the first 0.05 
% sec.
%
%	figure();
%	subplot(3, 1, 1);
%	plot(...);
%	subplot(3, 1, 2);
%	plot(...);
%	subplot(3, 1, 3);
%	plot(...);

% TODO: Visualize the spectrum of |up| by taking the N-point DFT transform.
% Then,  normalize the signal's Fourier transform, by the number of 
% frequency samples |NFFT|. Plot the magniture of Up(f) over the frequency 
% vector |f|. Overlap with the spectrum of U(f). Don't forget to use the 
% MATLAB commands 'abs', and  'fftshift'. Use the MATLAB command 'xlim' 
% to zoom in [-4000, 4000] Hz.
%
% Hint: You should expect one peak at the zero frequency from the baseband 
% signal, and two peaks at |fc| and |-fc| from the real passband signal
% that have around the half amplitude.
%
%	Upf = ...;
%
%	figure();
%	plot(...);

%% 4. Down-convert the real passband signal
% TODO: Create a complex baseband signal by mixing the real passband |up|
% with a local oscilator at |fc|. This can be done by modulating the |up|
% with |2 cos(2 pi fc t)| to get the in-phase component and the |up| with
% |2 sin(2 pi fc t)| to get the quadrature-phase component. This, process 
% is taking place at the receiver.
%
%	yi = ...;
%	yq = ...;
%	y = yi + 1j*yq;

% TODO: Visualize the spectrum of |y| by taking the N-point DFT transform.
% Then,  normalize the signal's Fourier transform, by the number of 
% frequency samples |NFFT|. Plot the magnitude of Y(f) over the frequency 
% vector |f|. Don't forget to use the MATLAB commands 'abs', and  
% 'fftshift'. Use the MATLAB command 'xlim' to zoom in [-6000, 6000] Hz.
%
% Hint: You should expect one peak at the zero frequency and one peak at 
% |-2*fc|.
%
%	Yf = ...;
%
%	figure();
%	plot(...);

%% 5. Design a baseband filter
% TODO: From the specrtum of |y| it could be observed that there is an
% unwanted image that was generated when we mixed our signal with the local
% oscillator at the receiver. Thus, we need to design an analog filter that
% will eliminated the image and will let us to recover the information.
%
% Specifications of the filter:
%
% * Passband Frequency: fc/2 Hz
% * Stopband Frequency: fc/2 + 500 Hz
% * Passband Ripple: 1 dB
% * Stopband Attenuation: 80 dB
% * Band to match exactly: 'both'
%
% Construct an FDESIGN object and call its ELLIP method.
%	d = fdesign.bandpass(Fpass, Fstop, Apass, Astop, fsamp);
%	Hd = design(d, 'ellip', 'MatchExactly', 'both');

% TODO: Use MATLAB command 'fvtool' to visualize the frequency and
% the phase response of the filter.

%% 6. Filter the received signal
% TODO: Use the MATLAB 'filter' command to filter the signal in time
% domain. You should filter seperate the |yi| and the |yq| to create the
% |yifilt| and |yqfilt| respectively.
%
%	yifilt = ...;
%	yqfilt = ...;
%	yfilt = yifilt + 1j*yqfilt;

% TODO: Visualize the |yifilt|, |yqfilt| and convex envelope abs(|yfilt|) 
% over the time vector |t|. Overlap the plots with the |ui|, |uq| and 
% abs(|u|) respectively. Use the MATLAB function xlim to zoom in the first 
% 0.05 sec.
%
%	figure();
%	subplot(3, 1, 1);
%	plot(...);
%	subplot(3, 1, 2);
%	plot(...);
%	subplot(3, 1, 3);
%	plot(...);

%% 7. Observations
% In this section write your comments and your observations for this lab:
%
% *