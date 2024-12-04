clear all;
close all;

% Part 1

input = importdata('C:/Users/Alexander Keizer/Desktop/AoC2024/inputs/inputday2.txt');

j = 1;

reactordoetboem = 0;

diff = zeros(1000,7);

for i =1:1000
  while j<8
    diff(i,j) = input(i,j)-input(i,j+1);
    j = j+1;
  endwhile


j = 1;
end

for i =1:1000
temp = diff(i,:);
  if ~isempty(temp(temp>0)) && ~isempty(temp(temp<0))
    reactordoetboem = reactordoetboem + 1;
  elseif ~isempty(temp(temp>3)) || ~isempty(temp(temp<-3)) || ~isempty(temp(temp==0))
    reactordoetboem = reactordoetboem + 1;
  end
end

answer1 = 1000-reactordoetboem;
% Soort van ez pz

%Part 2:


##for i =1:1000
##temp = diff(i,:);
##  if ~isempty(temp(temp>0)) && ~isempty(temp(temp<0))
##    reactordoetboem = reactordoetboem + 1;
##  elseif ~isempty(temp(temp>3)) || ~isempty(temp(temp<-3)) || ~isempty(temp(temp==0))
##    reactordoetboem = reactordoetboem + 1;
##  end
##end



