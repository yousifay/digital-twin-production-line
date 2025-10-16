T0 = min(LT); %minimum lead time
rb = 1/mean(out.manual); %bottleneck 
WIPc = rb*T0; %critical WIP
for w=1:13
%best case 
if w<= WIPc
TTPbest(w)= T0;
THbest(w) = w/T0;
else 
TTPbest(w) = w/rb;
THbest(w) = rb;
end
%worst case
THworst(w) = 1/T0;
TTPworst (w) = w*T0;
%practical worst case
TTPpwc(w) = T0 + ((w-1)/rb);
THpwc(w) = (w*rb)/(WIPc+w-1);
end
plot(WIP,TH)
hold on
 plot (WIP, THbest)
plot (WIP, THworst);
plot(WIP,THpwc)
legend ('actual','best case','worst case', 'PWC')
plot(WIP,LT)
hold on 
plot (WIP,TTPbest)
plot(WIP,TTPworst)
plot(WIP,TTPpwc)
legend ('actual','best case','worst case', 'PWC')
