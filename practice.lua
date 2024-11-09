-- 전체 학생 시험 성적 계산기
os.execute("chcp 65001 > nul") -- UTF-8

print("Lua 초보가 만든 시험 성적 통계기입니다.")
print("꼬니초등학교")
print("제작자 : Celine v1.0\n")
local grade
local class

while true do
    print("학년을 입력하세요 :")
    grade = tonumber(io.read())
    print("반을 입력하세요 :")
    class = tonumber(io.read())

    if grade and class then
        print(string.format("%d학년 %d반의 학생 성적 시험 통계를 시작합니다.\n", grade, class))
        break
    else
        print("정보를 다시 입력해주세요!\n")
    end
end

local students

while true do
    print("반의 전체 학생 수를 입력하세요 :")
    students = tonumber(io.read())
    if students then
        print(string.format("%d학년 %d반의 총 학생 수는 %d명 입니다.", grade, class, students))
        break
    else
        print("학생 수를 정수로 다시 입력해주세요!")
    end
end

local scores = {}
local sum = 0
local avg = 0

for a = 1, students do
    print(string.format("%d번째 학생의 점수를 입력하세요 :", a))
    local score = tonumber(io.read())
    table.insert(scores, score)
    sum = sum + score
end

print(string.format("꼬니초등학교 %d학년 %d반 학생 점수 통계", grade, class))
for a, score in ipairs(scores) do
    print(string.format("학생 %d: %d점", a, score))
end

avg = sum / students
print(string.format("학생 점수 평균: %2.f점", avg))