%DSBSC modulation 
%mudulation results in frequency translation -fc and fc 
% x(t) = Am(t)cos(2pifct)  and envelope is Am(t) which is trace of the
% signal which we would varify here 
%initialisation of sampling time intervals 
t= 0:1/Fs:(1-1/Fs);t = transpose(t);
m = outsignal1;
figure(1);
plot(outsignal1);
title('The message signal');
%carrier signal 
fc= 1000;
c= cos(2*pi*fc*t);  %all array multilied 
figure(2);
plot(c);
title("Carrier signal of fc= 1000 Hz");

%taking dsbsc of messsage signal m 
x1 = m.*c;
figure(3);
plot(x1);

m = outsignal2;
figure(4);
plot(outsignal2);
title('The Voice 2');


%taking dsbsc of messsage signal m 
x2 = m.*c;
figure(5);
plot(x2);
