function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

X = [X y];
Xi = sortrows(X, size(X)(2));

% extract unique elements in the specified column of the matrix
e = unique(Xi(:,end)); 

% build a number of matrice depending on the number of unique elements found
B = cell(size(e));
for k = 1:numel(e)
    B{k} = Xi(Xi(:,end)==e(k),:);
end

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

a = B{1};
b = B{2};

plot(b(:,1),b(:,2), 'kx', a(:,1),a(:,2), 'ko');

% =========================================================================

hold off;

end
