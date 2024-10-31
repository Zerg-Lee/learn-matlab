c = 0.2:0.2:1;
A = vander(c); % make Van der Monde-matrix.
xsol = ones(size(c')); % make the column vector xsol=[1,1,1,1,1]’.
b = A*xsol; % make the load vector b
x = A\b
naiv_gauss(A,b)

c = 0.1:0.1:1;
A = vander(c); 
xsol = ones(size(c')); 
b = A*xsol; 
x = A\b
naiv_gauss(A,b)

c = 0.05:0.05:1;
A = vander(c); 
xsol = ones(size(c')); 
b = A*xsol; 
x = A\b
naiv_gauss(A,b)
