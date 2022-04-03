pkg load miscellaneous;
M = csvread("Data/1.csv");
f=M(2:end,1);Uwy=M(2:end,2);Uwe=M(2:end,3);

semilogx(f,Uwy,".r","markersize", 15)
title ("Frequency characteristics");
xlabel ("f [Hz]");
ylabel ("Uwy [V]");
grid minor on
print "Uwy(f).pdf";
close();

semilogx(f,Uwe,".r","markersize", 15)
title ("Dynamic characteristics");
xlabel ("f [Hz]");
ylabel ("Uwe [V]");
grid minor on
print "Uwe(f).pdf";
close();

semilogx(f,(Uwy./Uwe),".r","markersize", 15)
title ("Amplification characteristics");
xlabel ("f [Hz]");
ylabel ("Ku");
grid minor on
print "Ku.pdf";
close();
#{
plot(f,Uwy,".r","markersize", 15, f,Uwy,"linewidth",2)
title ("Uwy(f)");
xlabel ("f [Hz]");
ylabel ("Uwy [V]");
grid minor on
print "DaneUwy.pdf";
close();

plot(f,Uwe,".r","markersize", 15, f,Uwe,"linewidth",2)
title ("Uwe(f)");
xlabel ("f [Hz]");
ylabel ("Uwe [V]");
grid minor on
print "DaneUwe.pdf";
close();
#}