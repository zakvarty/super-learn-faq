# Classification I

Questions relating to Week 2: Linear Regression.

-------------------------------------------------------------------------------- 

## Slides 3.3

### Announcement 

Please note the slight inconsistency here: in the typed slides I say we will consider 1 covariate and an intercept but in my speaking and hand-written maths I consider the case of two covariates and an intercept.


-------------------------------------------------------------------------------- 

## Definition of distributions in Labs

### Question 

I am trying to figure out how to go from the distributions above to the class definitions below. It seems like the diagonal terms of the covariance matrix are different. In particular, for  $Y=2$ and $Y=3$ we should have some stretch among $x_1$ and and $x_2$ axis, but the second distribution in the code simply looks like a translated normal. Could you provide an explanation? 

`` In class 1, we'll let $X$ have the standard normal distribution ... '' 

### Response 

Hi, this seems like a typo that snuck through lab development. Thanks for pointing it out!  

Code to match stated distributions: 


```r
# make standard normal
x<-matrix(rnorm(2*n), ncol = 2)

# make class 2
x[y == 2, ] <- 10 + x[y == 2, ] %*% diag(c(sqrt(10), 1))

# make class 3
x[y == 3, ] <- -10 + x[y == 3, ] %*% diag(c(1, sqrt(10)))

plot(x[,1],x[,2],col=c("orange","blue","green")[y], asp = 1)
```

Distributions to match given code: 

$$ X\ |\ Y_{ }=2\ \sim N\left(\left(\begin{matrix}10\\10\end{matrix}\right),\left(\begin{matrix}1&0\\0&1\end{matrix}\right)\right), $$

$$ X\ |\ Y_{ }=3\ \sim N\left(\left(\begin{matrix}10\\10\end{matrix}\right),\left(\begin{matrix}1&0\\0&16\end{matrix}\right)\right).$$  

There is also a missing $=$ sign after $\Pr(Y = 1 | X = x) \approx \hat p(x) ...$
--------------------------------------------------------------------------------

## Linear Regression vs. LDA 

### Queston 

In the prelude to the logistic regression section (3.1) in the week 3 lab, it suggests that normally distributed covariates with equal variances in each class form the basis of the logistic regression classifier and that the decision boundary is a straight line.

However, linear discriminant analysis also assumes that the covariates are normal and there is a shared variance term across all classes, and the decision boundary is also a straight line. Furthermore, the derivations for the two classifiers both build upon Bayes' theorem and the log-likelihood. 

So, I wonder what the difference is between the two classifiers? And if/how do they perform differently on a dataset?

### Response 

Good question, since with two categories the two methods can appear very similar. The two methods present two different approaches to the same problem. 

Logistic regression describes the conditional distribution of $Y|X=x$ as Bernoulli.  One motivation for using the logistic function (over e.g. probit) is that it yields nice properties when $X\sim \text{MVN}$. We saw another motivation in the videos, where we considered functions which map our parameters to $(0,1)$. The distributional assumption on X is not a core part of the method in logistic regression. 

Conversely, LDA assumes $X|Y=y \sim \text{MVN}$ as the basis for its classification method and uses the empirical distribution of $\text{Pr}(Y=y)$ to the distribution of interest: $Y|X=x$. 

This means that the core assumptions of LDA are broken if we have, for example, a categorical predictor but those of logistic regression are not. On the other hand, if we have more than two possible outcomes, the idea of LDA extends readily (the number of possible values for $y$ increases to 3 or more) but this completely breaks the Bernoulli assumption in logistic regression. 

I hope that helps to point out some of the differences that are not so obvious when considering binary outcomes and real-valued predictors.

--------------------------------------------------------------------------------

## Logistic Regression Assumptions 

### Question 

From reading various literature, in the derivation of the logistic regression function, there is no assumption of any normality at all - is this true? Are the covariates free to have any kind of distribution? 

### Response 

Great discussion going on in the comments here. Hopefully my comment in the LR vs LDA question can help clear things up as will our later discussions about generalised linear modelling. 

A couple of points worth repeating here: 

- logistic regression does not make assumptions about the marginal distribution of X, but has some nice properties when X ~ MVN. 
- logistic regression models the conditional distribution of $Y_i|X_i=x_i$ as Bernoulli($p_i$). This is a special case of the Binomial($n$, $p_i$) distribution where n=1. 
-The probability of a "success" for observation $i$, $p_i$, is modelled as a (logistic) function of the linear predictor for each outcome, or equivalently the log odds is a linear combination of the predictors. 





