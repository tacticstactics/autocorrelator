% autocorrelation_func
function autocorrrelation_intensity_func(aaa)

if nargin ==0
   
   aaa = 0.4;
   
end


 m = 2^9
 tcol = zeros(m,1); % time
 dcol = zeros(m,1); % difference
 imcol = zeros(m,1); % 
 Etcol = zeros(m,1); % Electric field
 
 freq = 10;
 omega = 2*pi*freq;
 
 
 for ii = 1:m,
 d = 0.025*ii-6;
 a = 0;   
 aa = 0;
 
 for jj = 1:m,   
    
 t = 0.025 * jj-6;
 tcol(jj,1) = t;
 
 Et = exp(j * omega * t) * (exp(-(t).^2)/(1)^2) + aaa * exp(j * omega * t) * (exp(-(t-3).^2)./(1).^2);
 Etcol(jj,1) = Et;
 
 td = t+d;
 Etd = exp(j * omega * td) * (exp(-(td).^2)/(1)^2) + aaa * exp(j * omega * td) * (exp(-(td-3).^2)./(1).^2);
 
 aa = a + abs((Et).*(Etd))^2;
 a = aa;
 
end
  
  %d = 0.01*ii-2.512;
  imcol(ii,1) = aa;
  dcol(ii,1) = d;    
end

 maximcol = max(imcol);
 normimcol = 1.* imcol./maximcol;

figure(1);
plot(dcol,normimcol,'r-');
xlabel('delay');
ylabel('intensity');
grid on;

figure(2);
plot(tcol,real(Etcol),'r-');
xlabel('time');
ylabel('Electric Field');
grid on;

figure(3);
plot(tcol,abs(Etcol).^2,'r-');
xlabel('time');
ylabel('Power');
grid on;

