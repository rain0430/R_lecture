# p.98 
# 분석 프로세스

# 데이터 전처리를 위한 도구 dplyr
# 데이터 전처리를 위한 도구 data.table

## 처리속도 차이
# dplyr : 10GB 이내
# data.table : 50GB 이상 

# 배움의 측면
# dplyr 매우 쉬움
# data.table 어려움

# 라이브러리 불러오기
# install.packages("dplyr")
library(dplyr)

mpg1 <- read.csv("mpg1.csv", stringsAsFactors = F)

str(mpg1)
data2 <- mpg1 %>% 
  select(drv, cty, hwy) %>% 
  filter(drv == "f") 
  
# Select : 컬럼명 추출
# Filter : 행 추출 (조건식)
# mutate : 
# Group by : 
# summarize() :

data3 <- select(mpg1, drv, cty, hwy)
data3 <- filter(data3, drv == "f")
data3 <- v()

# 교재 p99 ~ p120
# 파생변수 만들기

# filter, select, rename, mutate 등등
iris

# 데이터 미리보기
glimpse(iris)

iris %>% 
  # Species, setosa versicolor
  filter(Species != "virginica") %>% 
  select(Sepal.Length, Sepal.Width) %>% 
  filter(Sepal.Length > 5.0) %>% 
  mutate(total = Sepal.Length + Sepal.Width) -> data2

iris %>% 
  # Species, setosa versicolor
  filter(Species != "virginica" & Sepal.Length > 5.0) %>% 
  select(Sepal.Length, Sepal.Width) %>% 
  mutate(total = Sepal.Length + Sepal.Width) -> data3


# p.121 집단별 통계량
# p.122
mpg1 %>% 
  group_by(trans) %>%
  summarise(avg     = mean(cty)    # 평균
            , total = sum(cty)     # 총합
            , med   = median(cty)
            , count = n()) # 중간값

install.packages("nycflights13")
install.packages("tidyverse")

library(nycflights13)
library(tidyverse)


ggplot(who_disease, aes(x = year, y = cases)) + 
  
  geom_point()



