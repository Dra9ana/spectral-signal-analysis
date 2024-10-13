function ret = Rxx(x,tau)
% duzina x
N=length(x);
% povratna vrednost pri cemu je tau duzina na kojoj
% racunamo AKF
ret = zeros((2*tau-1),1);

% racunanje AKF za (0,tau)
for k = 1:tau
    ret(k+tau-1) = (1/N)*x((k):(N))*(x(1:(N-k+1))');
end
% posto je rxx(t)=rxx*(-t) dovoljno je da konjugujemo
% i obrnemo (1,tau) i dobicemo vrednosti za (-tau,-1)
ret(1:(tau-1))=flip(conj(ret((tau+1):(2*tau-1))));
end
