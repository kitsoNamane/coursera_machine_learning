function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
% =============================================================

comp_matrix = [X idx];
comp_matrix = sortrows(comp_matrix, n+1);

% extract unique elements in the apecified column of the matrix
e = unique(comp_matrix(:,end));

% build a number of matrice depending on the number of unique elements found
B = cell(size(e));

for i = 1:numel(e)
    % this is where the actual building of the matrice is done
    % 
    % build a matrice using the last element of the last column
    B{i} = comp_matrix(comp_matrix(:,end) == e(i),:);


    compute_mean = mean(B{i});
    centroids(i, :) = [compute_mean(:,1:end-1)];
end

