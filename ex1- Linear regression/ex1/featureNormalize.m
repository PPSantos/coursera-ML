function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
num_features = size(X, 2);
mu = zeros(1, num_features);
sigma = zeros(1, num_features);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


for i=1:num_features
  mu(i) = mean(X(:, i));
  sigma(i) = std(X(:, i));
  
  aux = X_norm(:, i) .- mu(i);
  X_norm(:, i) = aux ./ sigma(i);
  
end

fprintf('mu: %d\n', mu);
fprintf('sigma: %d\n', sigma);


% ============================================================

end
