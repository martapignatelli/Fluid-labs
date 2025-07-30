function [ts, found, where]=t_stable(n, cum_avg, tol, tt)
% applying mobile average
found=false;
where=0;
ts=0;
step_consec=25; 
window=10; 
counter=0;
for ii=window+1:n
    
    avg1=mean(cum_avg(ii-window:ii));
    avg2=mean(cum_avg(ii-window+1:ii));
     denom = max(abs(avg2), eps);  % per evitare divisione per zero
     rel_change = abs(avg2 - avg1) / denom;
    if rel_change<tol 
        counter=counter+1;
    else
        counter=0;
    end

    if counter >= step_consec
            found = true;
            ts = tt(ii);
            where = ii;
            break
    end

end
end