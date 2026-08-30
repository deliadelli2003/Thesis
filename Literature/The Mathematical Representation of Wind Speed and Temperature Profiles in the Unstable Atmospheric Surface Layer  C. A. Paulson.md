Investigates different statistical representations of wind speed distributions, focusing on the commonly used Weibull and Rayleigh models and comparing them with alternative series-expansion-based approaches introduced by Busing, Dyer, and Keeps. Its main aim is to evaluate how well these models represent actual wind speed data and to understand the trade-offs between simplicity, flexibility, and accuracy.
The authors analyze the mathematical forms of each representation and assess their ability to fit empirical wind speed measurements through parameters derived from moments and series expansions. The Weibull distribution, with its two-parameter flexibility, is affirmed as a widely used standard that balances ease of use and reasonable accuracy. Rayleigh distribution is noted for simplicity but limited adaptability.
Series expansion methods proposed by Busing, Dyer, and Keeps offer enhanced flexibility by incorporating higher-order statistical moments. These can provide more accurate fits for complex or multimodal wind speed distributions, though at the expense of increased computational complexity and sensitivity to data quality.

1. Weibull Distribution

- Form: The Weibull distribution is characterized by two parameters: the shape parameter k and the scale parameter c. Its probability density function (PDF) for wind speed v is given by:

f(v)=ck​(cv​)k−1e−(v/c)k

- Characteristics:

- Widely used in wind engineering due to its flexibility in modeling diverse wind regimes.

- The shape parameter k controls the spread and skewness of the distribution; a shape near 2 approximates a Rayleigh distribution.

- The scale parameter c is related to the characteristic wind speed.

- It is relatively simple to fit to empirical data by estimating k and c from sample moments.

- Advantages:

- Good overall fit to a variety of wind speed data.

- Two parameters make it both flexible and manageable.

- Limitations:

- Sometimes not sufficiently accurate for complex or multimodal wind speed data.

2. Rayleigh Distribution

- Form: A specific case of the Weibull with shape parameter k=2, the Rayleigh PDF is:

f(v)=σ2v​e−v2/(2σ2)
where σ is a scale parameter related to the mean wind speed.

- Characteristics:

- Simpler model with only one effective parameter.

- Often used as a first approximation when data is limited.

- Advantages:

- Very simple and mathematically tractable.

- Useful in certain theoretical or preliminary analyses.

- Limitations:

- Restricted shape reduces its fitting capability compared to Weibull.

- Less accurate if the actual distribution significantly deviates from this form.

3. Busing Representation

- Approach:

- Introduced by Busing, this approach expresses the wind speed distribution as an expansion based on statistical moments of the data.

- The idea is to approximate the PDF as a series with coefficients determined from moments (mean, variance, skewness, etc.).

- Characteristics:

- Captures more detailed features of the distribution than simple parametric forms.

- Requires calculation of higher-order moments.

- Advantages:

- Potentially more accurate for complex actual distributions.

- Flexible and general approach.

- Limitations:

- More mathematically complex.

- Convergence and stability of the expansion depend on data quality and number of moments used.

4. Dyer Representation

- Approach:

- The Dyer model uses a series expansion tailored for wind speed PDFs, involving orthogonal functions or basis sets selected to match wind data characteristics.

- It provides another way to approximate PDF beyond Weibull parameterization.

- Characteristics:

- Often better fits observed wind speed histograms.

- May incorporate empirical or theoretical constraints.

- Advantages:

- Can capture asymmetry and kurtosis better.

- Useful when Weibull does not provide adequate representation.

- Limitations:

- Complexity grows with order of expansion.

- Requires detailed data and computational effort.

5. Keeps Representation

- Approach:

- This representation involves constructing a PDF series expansion based on a functional form proposed by Keeps, designed to capture typical features seen in wind speed frequency distributions.

- Characteristics:

- Similar to Busing and Dyer, it aims at flexibility and improved fitting.

- Uses moments and possibly other parameters from the data to define coefficients.

- Advantages:

- Can potentially outperform Weibull and Rayleigh in specific cases.

- Adaptable to varying wind regimes.

- Limitations:

- Similar to other series expansions, it may be less straightforward to apply.

- Sensitive to statistical noise in higher moments.
