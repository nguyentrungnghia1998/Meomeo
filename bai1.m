fprintf("Gia tri cua y(-5) la %.3f\n",bai1func(-5));
fprintf("Gia tri cua y(4) la %.3f\n",bai1func(4));
x = -5:0.001:5;
y = bai1func(x);
plot(x,y);
xlabel('Input: x');
ylabel('Output: y');