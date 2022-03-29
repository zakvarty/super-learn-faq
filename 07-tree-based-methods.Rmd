# Tree-based Methods

--------------------------------------------------------------------------------

## Data Transformations

### Question 

In this week's live session, we talked about transforming the predictors to better fit the assumptions/suitability of our models.

Is there a systematic methodology you would follow to inform these transformations?
Or is it rather trial and error + by inspection until it 'looks about right'? 

### Response 

Good question. There is no one-size fits all approach to this, because it depends on the assumptions of the model that you are are trying to apply and the ways in which the assumptions of that model are violated by a particular data set. 

Some example techniques that you might want to look into are, for example: first and second order differencing to remove trends from a time series, pre-whitening or the Box-Cox transformation to better match assumptions on the distribution or moments of a predictor/response.

That should give you enough key-words to start looking into this interesting area for yourself. 



