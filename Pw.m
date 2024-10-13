function ret = Pw(x,f,L,overlap)
N=length(x);
Nf=length(f);
i=0;
ret=zeros(1,Nf);
first = 1;
w=hamming(L);

while((first+L-1)<=N) 
    data=x(first:(first+(L-1))).*(w.');
    ret = ret + Pper(data,f)*L/(sum(w.^2));
    first =first+(L-overlap); 
    i=i+1;
end

if(first<=N)
   L=N-first+1;
   w=hamming(L);
   data=x(first:end).*(w.');
   ret = ret+ Pper(data,f)*L/(sum(w.^2));
   i=i+1;
end

ret=ret/i;
end