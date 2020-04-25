function [x] = NR_Raiz(f, df, it, xi)
    for i = 0:it
        fxi = f(xi);
        dfxi = df(xi);
        res = xi - (fxi / dfxi);
        ea = ((res - xi) / res) * 100;
        p1 = ['It ', num2str(i), ':'];
        p2 = ['xi = ', num2str(xi), ' - (', num2str(fxi), ' / ', num2str(dfxi), ') = ', num2str(res)];
        p3 = ['ea = (', num2str(res), ' - (', num2str(xi), ' / ', num2str(res), ')) * 100 = ', num2str(ea)];
        disp(p1);
        disp(p2);
        disp(p3);
        xi = res;
    end
    x = res;
end