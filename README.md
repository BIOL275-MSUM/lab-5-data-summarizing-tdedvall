Lab 5
================
Tyler Edvall
2021-02-23

1.  Rename each variable so that it is all lower-case and uses an
    underscore \_ instead of a period . in the name (the recommended
    coding style in the tidyverse style guide). Print the resulting
    table.

<!-- end list -->

``` r
# load packages -----------------------------

library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.0.4     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
# read data ---------------------------------

iris
```

    ##     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
    ## 1            5.1         3.5          1.4         0.2     setosa
    ## 2            4.9         3.0          1.4         0.2     setosa
    ## 3            4.7         3.2          1.3         0.2     setosa
    ## 4            4.6         3.1          1.5         0.2     setosa
    ## 5            5.0         3.6          1.4         0.2     setosa
    ## 6            5.4         3.9          1.7         0.4     setosa
    ## 7            4.6         3.4          1.4         0.3     setosa
    ## 8            5.0         3.4          1.5         0.2     setosa
    ## 9            4.4         2.9          1.4         0.2     setosa
    ## 10           4.9         3.1          1.5         0.1     setosa
    ## 11           5.4         3.7          1.5         0.2     setosa
    ## 12           4.8         3.4          1.6         0.2     setosa
    ## 13           4.8         3.0          1.4         0.1     setosa
    ## 14           4.3         3.0          1.1         0.1     setosa
    ## 15           5.8         4.0          1.2         0.2     setosa
    ## 16           5.7         4.4          1.5         0.4     setosa
    ## 17           5.4         3.9          1.3         0.4     setosa
    ## 18           5.1         3.5          1.4         0.3     setosa
    ## 19           5.7         3.8          1.7         0.3     setosa
    ## 20           5.1         3.8          1.5         0.3     setosa
    ## 21           5.4         3.4          1.7         0.2     setosa
    ## 22           5.1         3.7          1.5         0.4     setosa
    ## 23           4.6         3.6          1.0         0.2     setosa
    ## 24           5.1         3.3          1.7         0.5     setosa
    ## 25           4.8         3.4          1.9         0.2     setosa
    ## 26           5.0         3.0          1.6         0.2     setosa
    ## 27           5.0         3.4          1.6         0.4     setosa
    ## 28           5.2         3.5          1.5         0.2     setosa
    ## 29           5.2         3.4          1.4         0.2     setosa
    ## 30           4.7         3.2          1.6         0.2     setosa
    ## 31           4.8         3.1          1.6         0.2     setosa
    ## 32           5.4         3.4          1.5         0.4     setosa
    ## 33           5.2         4.1          1.5         0.1     setosa
    ## 34           5.5         4.2          1.4         0.2     setosa
    ## 35           4.9         3.1          1.5         0.2     setosa
    ## 36           5.0         3.2          1.2         0.2     setosa
    ## 37           5.5         3.5          1.3         0.2     setosa
    ## 38           4.9         3.6          1.4         0.1     setosa
    ## 39           4.4         3.0          1.3         0.2     setosa
    ## 40           5.1         3.4          1.5         0.2     setosa
    ## 41           5.0         3.5          1.3         0.3     setosa
    ## 42           4.5         2.3          1.3         0.3     setosa
    ## 43           4.4         3.2          1.3         0.2     setosa
    ## 44           5.0         3.5          1.6         0.6     setosa
    ## 45           5.1         3.8          1.9         0.4     setosa
    ## 46           4.8         3.0          1.4         0.3     setosa
    ## 47           5.1         3.8          1.6         0.2     setosa
    ## 48           4.6         3.2          1.4         0.2     setosa
    ## 49           5.3         3.7          1.5         0.2     setosa
    ## 50           5.0         3.3          1.4         0.2     setosa
    ## 51           7.0         3.2          4.7         1.4 versicolor
    ## 52           6.4         3.2          4.5         1.5 versicolor
    ## 53           6.9         3.1          4.9         1.5 versicolor
    ## 54           5.5         2.3          4.0         1.3 versicolor
    ## 55           6.5         2.8          4.6         1.5 versicolor
    ## 56           5.7         2.8          4.5         1.3 versicolor
    ## 57           6.3         3.3          4.7         1.6 versicolor
    ## 58           4.9         2.4          3.3         1.0 versicolor
    ## 59           6.6         2.9          4.6         1.3 versicolor
    ## 60           5.2         2.7          3.9         1.4 versicolor
    ## 61           5.0         2.0          3.5         1.0 versicolor
    ## 62           5.9         3.0          4.2         1.5 versicolor
    ## 63           6.0         2.2          4.0         1.0 versicolor
    ## 64           6.1         2.9          4.7         1.4 versicolor
    ## 65           5.6         2.9          3.6         1.3 versicolor
    ## 66           6.7         3.1          4.4         1.4 versicolor
    ## 67           5.6         3.0          4.5         1.5 versicolor
    ## 68           5.8         2.7          4.1         1.0 versicolor
    ## 69           6.2         2.2          4.5         1.5 versicolor
    ## 70           5.6         2.5          3.9         1.1 versicolor
    ## 71           5.9         3.2          4.8         1.8 versicolor
    ## 72           6.1         2.8          4.0         1.3 versicolor
    ## 73           6.3         2.5          4.9         1.5 versicolor
    ## 74           6.1         2.8          4.7         1.2 versicolor
    ## 75           6.4         2.9          4.3         1.3 versicolor
    ## 76           6.6         3.0          4.4         1.4 versicolor
    ## 77           6.8         2.8          4.8         1.4 versicolor
    ## 78           6.7         3.0          5.0         1.7 versicolor
    ## 79           6.0         2.9          4.5         1.5 versicolor
    ## 80           5.7         2.6          3.5         1.0 versicolor
    ## 81           5.5         2.4          3.8         1.1 versicolor
    ## 82           5.5         2.4          3.7         1.0 versicolor
    ## 83           5.8         2.7          3.9         1.2 versicolor
    ## 84           6.0         2.7          5.1         1.6 versicolor
    ## 85           5.4         3.0          4.5         1.5 versicolor
    ## 86           6.0         3.4          4.5         1.6 versicolor
    ## 87           6.7         3.1          4.7         1.5 versicolor
    ## 88           6.3         2.3          4.4         1.3 versicolor
    ## 89           5.6         3.0          4.1         1.3 versicolor
    ## 90           5.5         2.5          4.0         1.3 versicolor
    ## 91           5.5         2.6          4.4         1.2 versicolor
    ## 92           6.1         3.0          4.6         1.4 versicolor
    ## 93           5.8         2.6          4.0         1.2 versicolor
    ## 94           5.0         2.3          3.3         1.0 versicolor
    ## 95           5.6         2.7          4.2         1.3 versicolor
    ## 96           5.7         3.0          4.2         1.2 versicolor
    ## 97           5.7         2.9          4.2         1.3 versicolor
    ## 98           6.2         2.9          4.3         1.3 versicolor
    ## 99           5.1         2.5          3.0         1.1 versicolor
    ## 100          5.7         2.8          4.1         1.3 versicolor
    ## 101          6.3         3.3          6.0         2.5  virginica
    ## 102          5.8         2.7          5.1         1.9  virginica
    ## 103          7.1         3.0          5.9         2.1  virginica
    ## 104          6.3         2.9          5.6         1.8  virginica
    ## 105          6.5         3.0          5.8         2.2  virginica
    ## 106          7.6         3.0          6.6         2.1  virginica
    ## 107          4.9         2.5          4.5         1.7  virginica
    ## 108          7.3         2.9          6.3         1.8  virginica
    ## 109          6.7         2.5          5.8         1.8  virginica
    ## 110          7.2         3.6          6.1         2.5  virginica
    ## 111          6.5         3.2          5.1         2.0  virginica
    ## 112          6.4         2.7          5.3         1.9  virginica
    ## 113          6.8         3.0          5.5         2.1  virginica
    ## 114          5.7         2.5          5.0         2.0  virginica
    ## 115          5.8         2.8          5.1         2.4  virginica
    ## 116          6.4         3.2          5.3         2.3  virginica
    ## 117          6.5         3.0          5.5         1.8  virginica
    ## 118          7.7         3.8          6.7         2.2  virginica
    ## 119          7.7         2.6          6.9         2.3  virginica
    ## 120          6.0         2.2          5.0         1.5  virginica
    ## 121          6.9         3.2          5.7         2.3  virginica
    ## 122          5.6         2.8          4.9         2.0  virginica
    ## 123          7.7         2.8          6.7         2.0  virginica
    ## 124          6.3         2.7          4.9         1.8  virginica
    ## 125          6.7         3.3          5.7         2.1  virginica
    ## 126          7.2         3.2          6.0         1.8  virginica
    ## 127          6.2         2.8          4.8         1.8  virginica
    ## 128          6.1         3.0          4.9         1.8  virginica
    ## 129          6.4         2.8          5.6         2.1  virginica
    ## 130          7.2         3.0          5.8         1.6  virginica
    ## 131          7.4         2.8          6.1         1.9  virginica
    ## 132          7.9         3.8          6.4         2.0  virginica
    ## 133          6.4         2.8          5.6         2.2  virginica
    ## 134          6.3         2.8          5.1         1.5  virginica
    ## 135          6.1         2.6          5.6         1.4  virginica
    ## 136          7.7         3.0          6.1         2.3  virginica
    ## 137          6.3         3.4          5.6         2.4  virginica
    ## 138          6.4         3.1          5.5         1.8  virginica
    ## 139          6.0         3.0          4.8         1.8  virginica
    ## 140          6.9         3.1          5.4         2.1  virginica
    ## 141          6.7         3.1          5.6         2.4  virginica
    ## 142          6.9         3.1          5.1         2.3  virginica
    ## 143          5.8         2.7          5.1         1.9  virginica
    ## 144          6.8         3.2          5.9         2.3  virginica
    ## 145          6.7         3.3          5.7         2.5  virginica
    ## 146          6.7         3.0          5.2         2.3  virginica
    ## 147          6.3         2.5          5.0         1.9  virginica
    ## 148          6.5         3.0          5.2         2.0  virginica
    ## 149          6.2         3.4          5.4         2.3  virginica
    ## 150          5.9         3.0          5.1         1.8  virginica

``` r
iris <- as_tibble(iris)
iris
```

    ## # A tibble: 150 x 5
    ##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    ##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
    ##  1          5.1         3.5          1.4         0.2 setosa 
    ##  2          4.9         3            1.4         0.2 setosa 
    ##  3          4.7         3.2          1.3         0.2 setosa 
    ##  4          4.6         3.1          1.5         0.2 setosa 
    ##  5          5           3.6          1.4         0.2 setosa 
    ##  6          5.4         3.9          1.7         0.4 setosa 
    ##  7          4.6         3.4          1.4         0.3 setosa 
    ##  8          5           3.4          1.5         0.2 setosa 
    ##  9          4.4         2.9          1.4         0.2 setosa 
    ## 10          4.9         3.1          1.5         0.1 setosa 
    ## # ... with 140 more rows

``` r
# question 1 -------------------------------

iris_new <- 
  rename(
    iris,
    sepal_length = Sepal.Length,
    sepal_width = Sepal.Width,
    petal_length = Petal.Length,
    petal_width = Petal.Width
  )

iris_new
```

    ## # A tibble: 150 x 5
    ##    sepal_length sepal_width petal_length petal_width Species
    ##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
    ##  1          5.1         3.5          1.4         0.2 setosa 
    ##  2          4.9         3            1.4         0.2 setosa 
    ##  3          4.7         3.2          1.3         0.2 setosa 
    ##  4          4.6         3.1          1.5         0.2 setosa 
    ##  5          5           3.6          1.4         0.2 setosa 
    ##  6          5.4         3.9          1.7         0.4 setosa 
    ##  7          4.6         3.4          1.4         0.3 setosa 
    ##  8          5           3.4          1.5         0.2 setosa 
    ##  9          4.4         2.9          1.4         0.2 setosa 
    ## 10          4.9         3.1          1.5         0.1 setosa 
    ## # ... with 140 more rows

2.  Convert the four numerical variables from cm to mm by multiplying by
    10. Print the resulting table.

<!-- end list -->

``` r
# question 2 -------------------------------

iris_numbers<- select(iris_new, sepal_length, sepal_width, petal_length, petal_width)
iris_numbers
```

    ## # A tibble: 150 x 4
    ##    sepal_length sepal_width petal_length petal_width
    ##           <dbl>       <dbl>        <dbl>       <dbl>
    ##  1          5.1         3.5          1.4         0.2
    ##  2          4.9         3            1.4         0.2
    ##  3          4.7         3.2          1.3         0.2
    ##  4          4.6         3.1          1.5         0.2
    ##  5          5           3.6          1.4         0.2
    ##  6          5.4         3.9          1.7         0.4
    ##  7          4.6         3.4          1.4         0.3
    ##  8          5           3.4          1.5         0.2
    ##  9          4.4         2.9          1.4         0.2
    ## 10          4.9         3.1          1.5         0.1
    ## # ... with 140 more rows

``` r
mutate(iris_new, iris_numbers = iris_numbers * 10)
```

    ## # A tibble: 150 x 6
    ##    sepal_length sepal_width petal_length petal_width Species iris_numbers$se~
    ##           <dbl>       <dbl>        <dbl>       <dbl> <fct>              <dbl>
    ##  1          5.1         3.5          1.4         0.2 setosa                51
    ##  2          4.9         3            1.4         0.2 setosa                49
    ##  3          4.7         3.2          1.3         0.2 setosa                47
    ##  4          4.6         3.1          1.5         0.2 setosa                46
    ##  5          5           3.6          1.4         0.2 setosa                50
    ##  6          5.4         3.9          1.7         0.4 setosa                54
    ##  7          4.6         3.4          1.4         0.3 setosa                46
    ##  8          5           3.4          1.5         0.2 setosa                50
    ##  9          4.4         2.9          1.4         0.2 setosa                44
    ## 10          4.9         3.1          1.5         0.1 setosa                49
    ## # ... with 140 more rows, and 3 more variables: $sepal_width <dbl>,
    ## #   $petal_length <dbl>, $petal_width <dbl>

3.  Calculate sepal area and petal area (area is equal to length
    multiplied by width). Print a table with only the variables sepal
    area, petal area, and species.

<!-- end list -->

``` r
# question 3 -------------------------------

Q3 <-mutate(iris_new, sepal_area = sepal_length * sepal_width, petal_area = petal_length * petal_width)
Q3
```

    ## # A tibble: 150 x 7
    ##    sepal_length sepal_width petal_length petal_width Species sepal_area
    ##           <dbl>       <dbl>        <dbl>       <dbl> <fct>        <dbl>
    ##  1          5.1         3.5          1.4         0.2 setosa        17.8
    ##  2          4.9         3            1.4         0.2 setosa        14.7
    ##  3          4.7         3.2          1.3         0.2 setosa        15.0
    ##  4          4.6         3.1          1.5         0.2 setosa        14.3
    ##  5          5           3.6          1.4         0.2 setosa        18  
    ##  6          5.4         3.9          1.7         0.4 setosa        21.1
    ##  7          4.6         3.4          1.4         0.3 setosa        15.6
    ##  8          5           3.4          1.5         0.2 setosa        17  
    ##  9          4.4         2.9          1.4         0.2 setosa        12.8
    ## 10          4.9         3.1          1.5         0.1 setosa        15.2
    ## # ... with 140 more rows, and 1 more variable: petal_area <dbl>

``` r
Q3.5 <- select(Q3, sepal_area, petal_area)
Q3.5
```

    ## # A tibble: 150 x 2
    ##    sepal_area petal_area
    ##         <dbl>      <dbl>
    ##  1       17.8      0.280
    ##  2       14.7      0.280
    ##  3       15.0      0.26 
    ##  4       14.3      0.3  
    ##  5       18        0.280
    ##  6       21.1      0.68 
    ##  7       15.6      0.42 
    ##  8       17        0.3  
    ##  9       12.8      0.280
    ## 10       15.2      0.15 
    ## # ... with 140 more rows

4.  Calculate the following statistics for the entire dataset from the
    sepal length variable and print the resulting table:

<!-- end list -->

1.  sample size
2.  maximum value
3.  minimum value
4.  range
5.  median
6.  first quartile (q1)
7.  third quartile (q2)
8.  inter-quartile range (iqr)

<!-- end list -->

``` r
# question 4 -------------------------------

summarize(
  iris_new,
  sampl_size = n(),
  min = min(sepal_length),
  max = max(sepal_length),
  range = max(sepal_length) - min(sepal_length),
  median = median(sepal_length),
  q1 = quantile(sepal_length, probs = 0.25),
  q2 = quantile(sepal_length, probs = 0.75),
  IQR = IQR(sepal_length)
)
```

    ## # A tibble: 1 x 8
    ##   sampl_size   min   max range median    q1    q2   IQR
    ##        <int> <dbl> <dbl> <dbl>  <dbl> <dbl> <dbl> <dbl>
    ## 1        150   4.3   7.9   3.6    5.8   5.1   6.4   1.3

5.  Calculate the following statistics for each species from the petal
    width variable and print the resulting table:

<!-- end list -->

1.  sample size
2.  mean
3.  standard deviation
4.  variance
5.  standard error of the mean
6.  approximate 95% confidence interval

<!-- end list -->

``` r
# question 5 -------------------------------

iris_grouped <-
  iris_new %>%
  group_by(Species) %>%
  summarize(
   sample_size = n(),
   mean = mean(petal_width),
   sd = sd(petal_width),
   var = var(petal_width),
   sem = mean / sqrt(sample_size),
    ci_upper = mean + 2 * sem,
    ci_lower = mean - 2 * sem
)
```

    ## `summarise()` ungrouping output (override with `.groups` argument)

``` r
iris_grouped
```

    ## # A tibble: 3 x 8
    ##   Species    sample_size  mean    sd    var    sem ci_upper ci_lower
    ##   <fct>            <int> <dbl> <dbl>  <dbl>  <dbl>    <dbl>    <dbl>
    ## 1 setosa              50 0.246 0.105 0.0111 0.0348    0.316    0.176
    ## 2 versicolor          50 1.33  0.198 0.0391 0.188     1.70     0.951
    ## 3 virginica           50 2.03  0.275 0.0754 0.287     2.60     1.45

6.  Visualize the relationship between petal width and species using a
    strip plot.

<!-- end list -->

``` r
# question 6 -------------------------------

ggplot(data = iris_new) +
  geom_jitter(mapping = aes(x = Species, y = petal_width))
```

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

7.  Starting with the previous graph, add the mean and 95% confidence
    interval for each species

<!-- end list -->

``` r
# question 7 -------------------------------

ggplot(data = iris_new) +
  geom_jitter(mapping = aes(x = Species, y = petal_width)) +
  geom_crossbar(
    data = iris_grouped, 
    mapping = aes(x = Species, y = mean, ymax = ci_upper, ymin = ci_lower),
    color = "red"
  )
```

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

8.  Visualize the relationship between petal length, petal width, and
    species using a scatterplot. Map the two numerical variables to the
    x and y axes and map species to the color and shape aesthetics.

<!-- end list -->

``` r
# question 8 -------------------------------

ggplot(data = iris_new) +
  geom_point(mapping = aes(x = petal_length, y = petal_width, color = Species))
```

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

``` r
sessioninfo::session_info()
```

    ## - Session info ---------------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.6.3 (2020-02-29)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/Chicago             
    ##  date     2021-02-23                  
    ## 
    ## - Packages -------------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.3)
    ##  backports     1.2.0   2020-11-02 [1] CRAN (R 3.6.3)
    ##  broom         0.7.3   2020-12-16 [1] CRAN (R 3.6.3)
    ##  cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.6.3)
    ##  cli           2.2.0   2020-11-20 [1] CRAN (R 3.6.3)
    ##  colorspace    2.0-0   2020-11-11 [1] CRAN (R 3.6.3)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.3)
    ##  DBI           1.1.0   2019-12-15 [1] CRAN (R 3.6.3)
    ##  dbplyr        2.0.0   2020-11-03 [1] CRAN (R 3.6.3)
    ##  digest        0.6.27  2020-10-24 [1] CRAN (R 3.6.3)
    ##  dplyr       * 1.0.2   2020-08-18 [1] CRAN (R 3.6.3)
    ##  ellipsis      0.3.1   2020-05-15 [1] CRAN (R 3.6.3)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 3.6.3)
    ##  fansi         0.4.1   2020-01-08 [1] CRAN (R 3.6.3)
    ##  farver        2.0.3   2020-01-16 [1] CRAN (R 3.6.3)
    ##  forcats     * 0.5.0   2020-03-01 [1] CRAN (R 3.6.3)
    ##  fs            1.5.0   2020-07-31 [1] CRAN (R 3.6.3)
    ##  generics      0.1.0   2020-10-31 [1] CRAN (R 3.6.3)
    ##  ggplot2     * 3.3.3   2020-12-30 [1] CRAN (R 3.6.3)
    ##  glue          1.4.2   2020-08-27 [1] CRAN (R 3.6.3)
    ##  gtable        0.3.0   2019-03-25 [1] CRAN (R 3.6.3)
    ##  haven         2.3.1   2020-06-01 [1] CRAN (R 3.6.3)
    ##  hms           1.0.0   2021-01-13 [1] CRAN (R 3.6.3)
    ##  htmltools     0.5.0   2020-06-16 [1] CRAN (R 3.6.3)
    ##  httr          1.4.2   2020-07-20 [1] CRAN (R 3.6.3)
    ##  jsonlite      1.7.2   2020-12-09 [1] CRAN (R 3.6.3)
    ##  knitr         1.30    2020-09-22 [1] CRAN (R 3.6.3)
    ##  labeling      0.4.2   2020-10-20 [1] CRAN (R 3.6.3)
    ##  lifecycle     0.2.0   2020-03-06 [1] CRAN (R 3.6.3)
    ##  lubridate     1.7.9.2 2020-11-13 [1] CRAN (R 3.6.3)
    ##  magrittr      2.0.1   2020-11-17 [1] CRAN (R 3.6.3)
    ##  modelr        0.1.8   2020-05-19 [1] CRAN (R 3.6.3)
    ##  munsell       0.5.0   2018-06-12 [1] CRAN (R 3.6.3)
    ##  pillar        1.4.7   2020-11-20 [1] CRAN (R 3.6.3)
    ##  pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 3.6.3)
    ##  purrr       * 0.3.4   2020-04-17 [1] CRAN (R 3.6.3)
    ##  R6            2.5.0   2020-10-28 [1] CRAN (R 3.6.3)
    ##  Rcpp          1.0.5   2020-07-06 [1] CRAN (R 3.6.3)
    ##  readr       * 1.4.0   2020-10-05 [1] CRAN (R 3.6.3)
    ##  readxl        1.3.1   2019-03-13 [1] CRAN (R 3.6.3)
    ##  reprex        0.3.0   2019-05-16 [1] CRAN (R 3.6.3)
    ##  rlang         0.4.10  2020-12-30 [1] CRAN (R 3.6.3)
    ##  rmarkdown     2.6     2020-12-14 [1] CRAN (R 3.6.3)
    ##  rstudioapi    0.13    2020-11-12 [1] CRAN (R 3.6.3)
    ##  rvest         0.3.6   2020-07-25 [1] CRAN (R 3.6.3)
    ##  scales        1.1.1   2020-05-11 [1] CRAN (R 3.6.3)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.3)
    ##  stringi       1.5.3   2020-09-09 [1] CRAN (R 3.6.3)
    ##  stringr     * 1.4.0   2019-02-10 [1] CRAN (R 3.6.3)
    ##  tibble      * 3.0.4   2020-10-12 [1] CRAN (R 3.6.3)
    ##  tidyr       * 1.1.2   2020-08-27 [1] CRAN (R 3.6.3)
    ##  tidyselect    1.1.0   2020-05-11 [1] CRAN (R 3.6.3)
    ##  tidyverse   * 1.3.0   2019-11-21 [1] CRAN (R 3.6.3)
    ##  utf8          1.1.4   2018-05-24 [1] CRAN (R 3.6.3)
    ##  vctrs         0.3.6   2020-12-17 [1] CRAN (R 3.6.3)
    ##  withr         2.3.0   2020-09-22 [1] CRAN (R 3.6.3)
    ##  xfun          0.20    2021-01-06 [1] CRAN (R 3.6.3)
    ##  xml2          1.3.2   2020-04-23 [1] CRAN (R 3.6.3)
    ##  yaml          2.2.1   2020-02-01 [1] CRAN (R 3.6.3)
    ## 
    ## [1] C:/Users/Tyler/Documents/R/win-library/3.6
    ## [2] C:/Program Files/R/R-3.6.3/library
