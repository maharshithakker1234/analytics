#topics ----
#factors, env, import/export. package install
#rep, recode, split, partition, subset, loops, cast & melt
#missing values. duplicates, apply
#graphs - bar, multiple line, pie, box, corrgram
#predict weight for certain height

head(women)
fit = lm(weight ~ height,data = women) #linear modelling independent~dependent; 1 independent, so simple linear regression; weight dependent on height
class(fit)
summary(fit) #if p-value is less than 0.05, the lm is significant and exists
#multiple r-squared is for slr, adjusted is for any lr
#residuals are actual-predicted heights
#prediction is only for the range of height values present in the data. No extrapolation

range(women$height)
(ndata = data.frame(height = c(60.5, 75.5,71.5)))
(predictedwt = predict(fit, newdata = ndata))
cbind(ndata, predictedwt)

resid(fit)
fitted(fit)
cbind(women,fitted(fit),resid(fit))


#assumptions
plot(fit)
