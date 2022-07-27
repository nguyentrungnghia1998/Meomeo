% Dap ung xung cua he thong la:
% h(n) = 4/3*2^n - 1/3*0.5^n

n = 0:20;
h1 = 4/3*2.^n - 1/3*(0.5).^n;
b = [1 0 0];
a = [1 -2.5 1];
h2 = impz(b,a,n);
figure(1);
subplot(2,1,1);
scatter(n,h1);
hold on
plot(n,h2);
legend("Dap ung xung theo cau a","Dap ung xung theo impz");
title("Dap ung xung theo phuong trinh sai phan va theo ham impz");

% Nhan thay gia tri xac dinh tu phuong phap giai phuong trinh sai phan va
% phuong phap dung ham impz cho ket qua nhu nhau, ket qua tim o cau a la
% chinh xac
% Tu hinh ve, nhan thay trang thai he thong di ra vo cung, he thong la
% khong on dinh

x2 = (0.5).^n;
x2 = [0 0 x2];
y2 = zeros(size(x2));
for i = 3:length(y2)
    y2(i) = 5/2*y2(i-1)-y2(i-2)+x2(i);
end

y2 = y2(3:end);
subplot(2,1,2);
plot(n,y2);
title("Dap ung cua he thong voi dau vao x(n) = 2^{-n} u(n)")