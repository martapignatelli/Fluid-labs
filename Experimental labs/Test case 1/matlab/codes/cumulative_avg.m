function m=cumulative_avg(n , V)
m=zeros(1, n);

%cumulative average
for ii=1:n
    m(ii)=sum(V(1:ii))./(length(V(1:ii)));
end
end