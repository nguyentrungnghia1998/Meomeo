fs = 1000;
T = 0.1;
t = 0:1/fs:3*T;
x = zeros(size(t));
for i = 1:length(t)
    if (t(i)<T)
        x(i) = cos(300*2*pi*t(i));
    elseif t(i)<2*T
        x(i) = cos(300*2*pi*t(i))+cos(400*2*pi*t(i));
    else
        x(i) = cos(300*2*pi*t(i))+cos(400*2*pi*t(i))+cos(500*2*pi*t(i));
    end
end
plot(t,x);
title('Do thi tin voi gia tri T = 0.1(s), tan so trich mau 1000Hz')
xlabel('Time (s)');
ylabel('Signal');