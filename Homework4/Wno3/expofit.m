% Define the independent variable x and the dependent variable y
x = [1 2 3 4 5];
y = [10 15 25 40 60];

% Take the natural logarithm of the dependent variable y
y_ln = log(y);

% Calculate the slope and y-intercept of the exponential regression line
n = length(x);
sum_x = sum(x);
sum_y_ln = sum(y_ln);
sum_xy = sum(x.*y_ln);
sum_x2 = sum(x.^2);
slope = (n*sum_xy - sum_x*sum_y_ln) / (n*sum_x2 - sum_x^2)
y_intercept = (sum_y_ln - slope*sum_x) / n

% Plot the data and the exponential regression line
plot(x, y, 'o');
hold on;
plot(x, exp(y_intercept) * exp(slope*x), 'r');
