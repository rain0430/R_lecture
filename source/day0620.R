# 벡터
num_vector = c(1, 2, 3)
num_vector2 = c(5, 6, 7)

num_vector[3] + num_vector2[2]

# 숫자형 벡터

# 문자열 벡터
char_vector <- c("Hi", "Hello")
char_vector

char_vector[2] # 숫자 1, 2 인덱스
class(char_vector) # 벡터의 유형을 알 수 있다. 

# 남이 만든 함수를 쓰려면, 입력 조건
# 

logical_vector <- c(TRUE, FALSE)
logical_vector

class(logical_vector)


a <- c(1, 2, "Hello")
class(a)

b <- c(TRUE, FALSE, "TRUE")
class(b)
b

c <- c(1, 2, TRUE, FALSE)
class(c)
c


## 범주형 벡터
# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", 
                        "기온보통", 
                        "기온낮음", 
                        "기온높음", 
                        "기온보통", 
                        "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음", 
                                                "기온높음"))
factor_temperature_factor
class(factor_temperature_factor)
class(factor_location_vector)


## 데이터 프레임 
# - 엑셀 데이터
no = c(1, 2, 3, 4, 5)
sex = c("male", "female", "male", "male", "female")
korean = c(87, 92, 95, 81, 87)

exam = data.frame(no, sex, korean)
exam


exam$no[1]
exam$sex[1]

# 데이터 타입
class(exam$sex)

exam$no
class(exam$no)

class(exam$korean)

str(exam)

# 데이터 내보내기 & 불러오기
# 경로
getwd()

write.csv(x = exam, file = "temp.csv")

# 바탕화면에 dataset 폴더 생성, exam 객체 저장하세요

?write.csv

write.csv(x = temp, file = "temp2.csv")

# 데이터 불러오기
temp = read.csv("dataset/temp.csv")
temp2 = read.csv("dataset2/temp2.csv")

# p.51 
# R에서 예제파일 exam.csv를 객체 exam으로 입력해서 설명함. 

exam = read.csv("exam.csv")
getwd() # 현재 경로를 표시해주는 함수

# install.packages("ggplot2")

library(ggplot2)
economics <- ggplot2::economics

# 여기서 잠깐 (p.66)
# 실무 패키지

# install.packages("data.table")
library(data.table)

# 공식문서 확인

# 엑셀파일 불러오기
install.packages("readxl")
library(readxl)

# p.68 설명
read.csv("student1.csv")
read.csv("student1.csv", skip = 1)

# 엑셀 파일에 있는 복수의 시트에서 특정 시트 불러오기
read_excel("student1_xl.xlsx") # 첫번째 시트 불러오기

read_excel("student1_xl.xlsx", sheet = 2)

# p.69 txt 파일 불러오기


# p.73 SPSS 파일 불러오기
install.packages("foreign")
library(foreign)
student <- read.spss("student.sav")
class(student)
as.data.frame(student) # 형변환

# 5, 6교시 
# 데이터 불러오기
# 경로를 잘 잡는 것이 매우 중요
# 

















