% To load data


load azip

A = azip;

load dzip

B = dzip;

load testzip

Z = testzip;

load dtest

D = dtest;


% From data file azip.dat I try to form 10 matrix classes for digit 0 to 9
% And for each digit, I use SVD to calculate the first 5,10,20 basis

matrix_0 = [];

j_0 = 1;

for i = 1 : 1707
    if B(1,i) == 0
        matrix_0(:,j_0) = A(:,i);
        j_0 = j_0+1;
    end
end


[U_0,S_0,V_0] = svd(matrix_0);

basis_0_5 = U_0(:,1:5);

basis_0_10 = U_0(:,1:10);

basis_0_20 = U_0(:,1:20);

I_0 = eye(256);




matrix_1 = [];

j_1 = 1;

for i = 1 : 1707
    if B(1,i) == 1
        matrix_1(:,j_1) = A(:,i);
        j_1 = j_1+1;
    end
end

[U_1,S_1,V_1] = svd(matrix_1);

basis_1_5 = U_1(:,1:5);

basis_1_10 = U_1(:,1:10);

basis_1_20 = U_1(:,1:20);

I_1 = eye(256);





matrix_2 = [];

j_2 = 1;

for i = 1 : 1707
    if B(1,i) == 2
        matrix_2(:,j_2) = A(:,i);
        j_2 = j_2+1;
    end
end

[U_2,S_2,V_2] = svd(matrix_2);

basis_2_5 = U_2(:,1:5);

basis_2_10 = U_2(:,1:10);

basis_2_20 = U_2(:,1:20);

I_2 = eye(256);




matrix_3 = [];

j_3 = 1;

for i = 1 : 1707
    if B(1,i) == 3
        matrix_3(:,j_3) = A(:,i);
        j_3 = j_3+1;
    end
end

[U_3,S_3,V_3] = svd(matrix_3);

basis_3_5 = U_3(:,1:5);

basis_3_10 = U_3(:,1:10);

basis_3_20 = U_3(:,1:20);

I_3 = eye(256);




matrix_4 = [];

j_4 = 1;

for i = 1 : 1707
    if B(1,i) == 4
        matrix_4(:,j_4) = A(:,i);
        j_4 = j_4+1;
    end
end

[U_4,S_4,V_4] = svd(matrix_4);

basis_4_5 = U_4(:,1:5);

basis_4_10 = U_4(:,1:10);

basis_4_20 = U_4(:,1:20);

I_4 = eye(256);




matrix_5 = [];

j_5 = 1;

for i = 1 : 1707
    if B(1,i) == 5
        matrix_5(:,j_5) = A(:,i);
        j_5 = j_5+1;
    end
end

[U_5,S_5,V_5] = svd(matrix_5);

basis_5_5 = U_5(:,1:5);

basis_5_10 = U_5(:,1:10);

basis_5_20 = U_5(:,1:20);

I_5 = eye(256);



matrix_6 = [];

j_6 = 1;

for i = 1 : 1707
    if B(1,i) == 6
        matrix_6(:,j_6) = A(:,i);
        j_6 = j_6+1;
    end
end

[U_6,S_6,V_6] = svd(matrix_6);

basis_6_5 = U_6(:,1:5);

basis_6_10 = U_6(:,1:10);

basis_6_20 = U_6(:,1:20);

I_6 = eye(256);



matrix_7 = [];

j_7 = 1;

for i = 1 : 1707
    if B(1,i) == 7
        matrix_7(:,j_7) = A(:,i);
        j_7 = j_7+1;
    end
end

[U_7,S_7,V_7] = svd(matrix_7);

basis_7_5 = U_7(:,1:5);

basis_7_10 = U_7(:,1:10);

basis_7_20 = U_7(:,1:20);

I_7 = eye(256);

        
matrix_8 = [];

j_8 = 1;

for i = 1 : 1707
    if B(1,i) == 8
        matrix_8(:,j_8) = A(:,i);
        j_8 = j_8+1;
    end
end

[U_8,S_8,V_8] = svd(matrix_8);

basis_8_5 = U_8(:,1:5);

basis_8_10 = U_8(:,1:10);

basis_8_20 = U_8(:,1:20);

I_8 = eye(256);


matrix_9 = [];

j_9 = 1;

for i = 1 : 1707
    if B(1,i) == 9
        matrix_9(:,j_9) = A(:,i);
        j_9 = j_9+1;
    end
end

[U_9,S_9,V_9] = svd(matrix_9);

basis_9_5 = U_9(:,1:5);

basis_9_10 = U_9(:,1:10);

basis_9_20 = U_9(:,1:20);

I_9 = eye(256);


% To calculate the relative residuals in 5,10,20 basis for 2007 values of 
% test digits data from testzip.dat, as digit classification

rr_b5 = [];

for k = 1 : 2007

    rr_b5(k,1) = norm((I_0 - basis_0_5 * basis_0_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,2) = norm((I_1 - basis_1_5 * basis_1_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,3) = norm((I_2 - basis_2_5 * basis_2_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,4) = norm((I_3 - basis_3_5 * basis_3_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,5) = norm((I_4 - basis_4_5 * basis_4_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,6) = norm((I_5 - basis_5_5 * basis_5_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,7) = norm((I_6 - basis_6_5 * basis_6_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,8) = norm((I_7 - basis_7_5 * basis_7_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,9) = norm((I_8 - basis_8_5 * basis_8_5') * Z(:,k))/norm(Z(:,k));
    rr_b5(k,10) = norm((I_9 - basis_9_5 * basis_9_5') * Z(:,k))/norm(Z(:,k));
    
    
end

% For each digit, compare its relative residuals from 0 to 9
% To get the result, take the index for the min of relative residuals
% Index needs to minues one since the digits are 0 to 9 but the index of
% array needs to be positive, so 1 to 10

result_b5 = [];

for t = 1 : 2007
    [M,I] = min(rr_b5(t,:));
    result_b5(1,t) = I - 1;
end




rr_b10 = [];

for k = 1 : 2007

    rr_b10(k,1) = norm((I_0 - basis_0_10 * basis_0_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,2) = norm((I_1 - basis_1_10 * basis_1_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,3) = norm((I_2 - basis_2_10 * basis_2_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,4) = norm((I_3 - basis_3_10 * basis_3_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,5) = norm((I_4 - basis_4_10 * basis_4_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,6) = norm((I_5 - basis_5_10 * basis_5_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,7) = norm((I_6 - basis_6_10 * basis_6_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,8) = norm((I_7 - basis_7_10 * basis_7_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,9) = norm((I_8 - basis_8_10 * basis_8_10') * Z(:,k))/norm(Z(:,k));
    rr_b10(k,10) = norm((I_9 - basis_9_10 * basis_9_10') * Z(:,k))/norm(Z(:,k));
    
    
end


result_b10 = [];

for t = 1 : 2007
    [M,I] = min(rr_b10(t,:));
    result_b10(1,t) = I - 1;
end

    


rr_b20 = [];

for k = 1 : 2007

    rr_b20(k,1) = norm((I_0 - basis_0_20 * basis_0_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,2) = norm((I_1 - basis_1_20 * basis_1_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,3) = norm((I_2 - basis_2_20 * basis_2_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,4) = norm((I_3 - basis_3_20 * basis_3_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,5) = norm((I_4 - basis_4_20 * basis_4_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,6) = norm((I_5 - basis_5_20 * basis_5_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,7) = norm((I_6 - basis_6_20 * basis_6_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,8) = norm((I_7 - basis_7_20 * basis_7_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,9) = norm((I_8 - basis_8_20 * basis_8_20') * Z(:,k))/norm(Z(:,k));
    rr_b20(k,10) = norm((I_9 - basis_9_20 * basis_9_20') * Z(:,k))/norm(Z(:,k));
    
    
end


result_b20 = [];

for t = 1 : 2007
    [M,I] = min(rr_b20(t,:));
    result_b20(1,t) = I - 1;
end


%Accuracy

pt_b5 = 0;
pt_b10 = 0;
pt_b20= 0;

for h = 1 : 2007
    if result_b5(1,h) == D(1,h)
        pt_b5 = pt_b5 + 1;
    end
    
    if result_b10(1,h) == D(1,h)
        pt_b10 = pt_b10 + 1;
    end
    
    if result_b20(1,h) == D(1,h)
        pt_b20 = pt_b20 + 1;
    end
    
end


Accuracy_b5 = pt_b5/2007;

Accuracy_b10 = pt_b10/2007;

Accuracy_b20 = pt_b20/2007;


% To check if all digits are equally easy or difficult to classify
% 

D_0 = [];
D_1 = [];
D_2 = [];
D_3 = [];
D_4 = [];
D_5 = [];
D_6 = [];
D_7 = [];
D_8 = [];
D_9 = [];

result_b5_0 = [];
result_b5_1 = [];
result_b5_2 = [];
result_b5_3 = [];
result_b5_4 = [];
result_b5_5 = [];
result_b5_6 = [];
result_b5_7 = [];
result_b5_8 = [];
result_b5_9 = [];


j_0 = 1;
j_1 = 1;
j_2 = 1;
j_3 = 1;
j_4 = 1;
j_5 = 1;
j_6 = 1;
j_7 = 1;
j_8 = 1;
j_9 = 1;

for i = 1 : 2007
    if D(1,i) == 0
        D_0(1,j_0) = 0;
        result_b5_0(1,j_0) = result_b5(1,i);
        j_0 = j_0+1;
    end
    
    if D(1,i) == 1
        D_1(1,j_1) = 1;
        result_b5_1(1,j_1) = result_b5(1,i);
        j_1 = j_1+1;
    end
    
    if D(1,i) == 2
        D_2(1,j_2) = 2;
        result_b5_2(1,j_2) = result_b5(1,i);
        j_2 = j_2+1;
    end
    
    if D(1,i) == 3
        D_3(1,j_3) = 3;
        result_b5_3(1,j_3) = result_b5(1,i);
        j_3 = j_3+1;
    end
    
    if D(1,i) == 4
        D_4(1,j_4) = 4;
        result_b5_4(1,j_4) = result_b5(1,i);
        j_4 = j_4+1;
    end
    
    if D(1,i) == 5
        D_5(1,j_5) = 5;
        result_b5_5(1,j_5) = result_b5(1,i);
        j_5 = j_5+1;
    end
    
    if D(1,i) == 6
        D_6(1,j_6) = 6;
        result_b5_6(1,j_6) = result_b5(1,i);
        j_6 = j_6+1;
    end
    
    if D(1,i) == 7
        D_7(1,j_7) = 7;
        result_b5_7(1,j_7) = result_b5(1,i);
        j_7 = j_7+1;
    end
    
    if D(1,i) == 8
        D_8(1,j_8) = 8;
        result_b5_8(1,j_8) = result_b5(1,i);
        j_8 = j_8+1;
    end
    
    if D(1,i) == 9
        D_9(1,j_9) = 9;
        result_b5_9(1,j_9) = result_b5(1,i);
        j_9 = j_9+1;
    end
end

 
    



pt_b5_0 = 359 - nnz(result_b5_0 - D_0);

accuracy_b5_0 = pt_b5_0/359;


pt_b5_1 = 264 - nnz(result_b5_1 - D_1);

accuracy_b5_1 = pt_b5_1/264;


pt_b5_2 = 198 - nnz(result_b5_2 - D_2);

accuracy_b5_2 = pt_b5_2/198;


pt_b5_3 = 166 - nnz(result_b5_3 - D_3);

accuracy_b5_3 = pt_b5_3/166;


pt_b5_4 = 200 - nnz(result_b5_4 - D_4);

accuracy_b5_4 = pt_b5_4/200;


pt_b5_5 = 160 - nnz(result_b5_5 - D_5);

accuracy_b5_5 = pt_b5_5/160;


pt_b5_6 = 170 - nnz(result_b5_6 - D_6);

accuracy_b5_6 = pt_b5_6/170;


pt_b5_7 = 147 - nnz(result_b5_7 - D_7);

accuracy_b5_7 = pt_b5_7/147;


pt_b5_8 = 166 - nnz(result_b5_8 - D_8);

accuracy_b5_8 = pt_b5_8/166;


pt_b5_9 = 177 - nnz(result_b5_9 - D_9);

accuracy_b5_9 = pt_b5_9/177;




result_b10_8 = [];

result_b20_8 = [];

j_8 = 1;

for i = 1:2007
    if D(1,i) == 8
        result_b10_8(1,j_8) = result_b10(1,i);
        result_b20_8(1,j_8) = result_b20(1,i);
        j_8 = j_8+1;
    end
    
end




pt_b10_8 = 166 - nnz(result_b10_8 - D_8);

accuracy_b10_8 = pt_b10_8/166;



pt_b20_8 = 166 - nnz(result_b20_8 - D_8);

accuracy_b20_8 = pt_b20_8/166;


