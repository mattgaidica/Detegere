
vidFile = '/Users/mattgaidica/Dropbox/Projects/Dauer Lab/Mouse Tremor/6415-small-clip.mp4';
outDir = '/Users/mattgaidica/Dropbox/Projects/Dauer Lab/Mouse Tremor/phaseAmplify';
sigma = 0; % Blurring
magPhase = 5; % Magnification
fs = 30; % Sampling rate
fl = 3; % Freq bands
fh = 12; % Freq bands
refFrame  = 20;

phaseAmplify(vidFile,magPhase,fl,fh,fs,outDir,'sigma',sigma);