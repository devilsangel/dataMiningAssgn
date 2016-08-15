function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

[m n] = size(X);
centroids = zeros(K, n);
l=zeros(K, n);
for i=1:m
	centroids(idx(i),:)=centroids(idx(i),:)+X(i,:);
	l(idx(i),:)=l(idx(i),:)+1;
end
centroids=centroids./l;







% =============================================================


end

