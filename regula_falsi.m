%regula_falsi - Projekt I
close all; clc;

%dane
a=0;
b=0.005;
E=1e-6;

%uzycie metody: 'regula falsi'
if  f(a)*f(b)<0
 x1 = b-f(b)*(b-a)/(f(b)-f(a));
  
        if f(x1)*f(a)<0
            while abs(f(x1)) > E
             x1 = x1-f(x1)*(x1-a)/(f(x1)-f(a));
            end
        
        elseif f(x1)*f(b)<0
            while abs(f(x1)) > E
             x1 = x1-f(x1)*(x1-b)/(f(x1)-f(b));
            end
        end
else 
    disp('brak rozwiazania');
end
disp('warosc funkcji w znalezionym x1:');
disp(f(x1));
disp('otrzymany x1 - rozwiązanie:');
disp(x1);

%funkcja fx
function fx = f(x)
fx = (0.3/(1000e-6))-5*100*pi*sin(100*pi*x);
end

