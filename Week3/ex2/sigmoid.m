function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% straightforward solution
% g = 1 ./ (1 + exp(-z));

% alternate solution using arrayfun
function ret = sigmoid1D(x)
	ret = 1 / (1 + e^(-x));
end

g = arrayfun(@(x) sigmoid1D(x), z);

% =============================================================

end