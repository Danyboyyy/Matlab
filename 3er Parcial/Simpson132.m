%n = # de puntos
%h = altura de segmentos
%val = arreglo de valores
function [area] = Simpson132(n, h, val)
    area = val(1) + val(n);
    
    for i = 2:n - 1
        if mod(i, 2) == 0
            area = area + 4 * val(i);
        else
            area = area + 2 * val(i);
        end
    end
    
    area = area * h / 3;
end