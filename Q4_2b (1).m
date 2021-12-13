g=@(x)(atan(1+x^2));
f=@(x) sqrt(1+((2*x)/((x^2 + 1)^2 + 1))^2);
a=0;
b=2;
n=8;
h=(b-a)/n;
sum=0;
for i=1:n-1
   x=a+h*i;
   if rem(i,2)==0
       sum=sum+2*f(x);
   else
       sum=sum+4*f(x);
   end
end
sum=sum+f(a)+f(b);
ans=(sum*h)/3;
disp(ans);
