%Program to get audui file 
%initialisation of audio object 
Fs = 44100;%default is 8192 
noc= 1;
nob=16;%8,16,24
recObj = audiorecorder(Fs,nob,noc);  

% voice collection from speakers 
disp("Recording Voice 1");
recordblocking(recObj,1);
Voice1 = getaudiodata(recObj);%extraction of audio file
tiledlayout(2,2);
nexttile;
title("Voice of Speaker-1");
plot(Voice1); 
outsignal1 = awgn(Voice1,3,'measured');
nexttile;
title("Voice of Speaker-1 with Gausian Noise");
plot(outsignal1); 


disp("Recording Voice 2");
recordblocking(recObj,1);
Voice2 = getaudiodata(recObj);%extraction of audio file
nexttile;
title("Voice of Speaker-2");
plot(Voice2); 
outsignal2 = awgn(Voice2,3,'measured');
nexttile;
title("Voice of Speaker-2 with Gausian Noise");
plot(outsignal2); 












