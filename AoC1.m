clear all;
close all;

%Part 1

addpath(genpath('C:/Users/Alexander Keizer/Desktop/AoC/inputs'));
A = importdata('C:/Users/Alexander Keizer/Desktop/AoC/inputs/inputday1.txt');

A1 = sort(A(:,1));
A2 = sort(A(:,2));
answer = sum(abs(A1-A2));

%lmao geen for loop gebruikt hihi array go brr

%% Part 2

terrorsom = 0;

for i = 1:1000
  for j = 1:1000
    if A1(i) == A2(j)
      terrorsom = terrorsom + A1(i);
    end
  end
 end


