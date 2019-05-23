% 埃特金插值法
% ---------------
% Jackkii 2019/05/23
%

xx = 0.5
x = [0 1 -1 2 -2]
y = [1 3 1/3 9 1/9]
n = length(x)

for k = 2:n
    for i = k:n
        y(i)=(xx - x(k-1))*y(i)/(x(i)-x(k-1))+(xx-x(i))*y(k-1)/(x(k-1)-x(i));
    end
    disp(k)
    disp(y) % P_0i,P_01i...
end
