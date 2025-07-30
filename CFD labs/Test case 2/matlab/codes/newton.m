function [x_root, success] = newton(f, df, x0, tol, maxIter)
    

    x = x0;
    success = false;
    it=0;
    res=tol+1;
    while it<=maxIter && res>tol
        f_val = f(x);
        df_val = df(x);

         if abs(df_val) < 1e-12 || isnan(df_val)
             warning('Derivative too small or NaN. Stopping.');
             return;
         end

        x_new = x - f_val ./ df_val;
        res=abs(x_new - x);
        if res < tol
            x_root = x_new;
            success = true;
            return;
        end
        it=it+1;
        x = x_new;
    end

    x_root = x;
    warning('Did not converge within maximum iterations.');
end