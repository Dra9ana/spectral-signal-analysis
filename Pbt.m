function ret = Pbt(x,f,w)
% duzina na kojoj nam treba Rxx
N=(length(w)+1)/2;
% racunanje Rxx
rxx=Rxx(x,N);
% racunanje eksponenta
E=exp(-j*2*pi*(-(N-1):N-1)'*f);
% vracanje prozorovane furijeove transformacije AKF
% s obzirom da je rxx parna njena FT ce svakako biti realna
% real se uzima da matlab ne bi gledao na nju kao r + 0j vec kao na realan
% broj
ret=real(sum(w.*rxx.*E));
end