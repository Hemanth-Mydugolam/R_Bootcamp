# Load necessary libraries
library(survival)

# ------------------------------
# 1. T-Test (Independent & Paired)
# ------------------------------
# The t-test compares means between two groups.
# Independent t-test: Compare MPG between automatic & manual cars in the mtcars dataset.
# Paired t-test: Example using before & after horsepower modifications.

data(mtcars)
t.test(mpg ~ am, data = mtcars)  # Independent t-test

t.test(mtcars$hp, mtcars$drat, paired = TRUE)  # Paired t-test (illustrative)

# ------------------------------
# 2. ANOVA (One-Way & Two-Way)
# ------------------------------
# ANOVA is used to compare means across multiple groups.
# One-Way ANOVA: Compare MPG across different cylinder groups in mtcars.
# Two-Way ANOVA: Compare MPG based on cylinders and transmission type.

anova_model <- aov(mpg ~ factor(cyl), data = mtcars)  # One-way ANOVA
summary(anova_model)

anova_model2 <- aov(mpg ~ factor(cyl) * factor(am), data = mtcars)  # Two-way ANOVA
summary(anova_model2)

# ------------------------------
# 3. Chi-Square Test
# ------------------------------
# Chi-Square test checks the association between categorical variables.
# Example: Test if Hair Color is associated with Eye Color in the HairEyeColor dataset.

data(HairEyeColor)
chisq.test(margin.table(HairEyeColor, c(1,2)))  # Hair vs Eye Color

# ------------------------------
# 4. Pearson Correlation
# ------------------------------
# Pearson correlation measures the linear relationship between two continuous variables.
# Example: Check correlation between MPG & Horsepower in mtcars.

cor.test(mtcars$mpg, mtcars$hp, method = "pearson")

# ------------------------------
# 5. Linear Regression
# ------------------------------
# Linear regression is used for predicting a continuous outcome.
# Example: Predict MPG using Horsepower (hp) & Weight (wt) in mtcars.

model <- lm(mpg ~ hp + wt, data = mtcars)
summary(model)

# ------------------------------
# 6. Logistic Regression
# ------------------------------
# Logistic regression predicts binary outcomes.
# Example: Predict transmission type (am: 0 = automatic, 1 = manual) based on HP & MPG.

logistic_model <- glm(am ~ hp + mpg, data = mtcars, family = binomial)
summary(logistic_model)

# ------------------------------
# 7. Mann-Whitney U Test
# ------------------------------
# The Mann-Whitney U test is a non-parametric alternative to the t-test.
# Example: Compare MPG between 4-cylinder & 6-cylinder cars in mtcars.

wilcox.test(mtcars$mpg[mtcars$cyl == 4], mtcars$mpg[mtcars$cyl == 6])

# ------------------------------
# 8. Kaplan-Meier Survival Analysis
# ------------------------------
# Kaplan-Meier is used to analyze time-to-event data.
# Example: Analyze survival time based on sex in the lung dataset.

data(lung)
surv_model <- survfit(Surv(time, status) ~ sex, data = lung)

plot(surv_model, col=c("red", "blue"), lwd=2, xlab="Time", ylab="Survival Probability")
legend("topright", legend=c("Male", "Female"), col=c("red", "blue"), lwd=2)
