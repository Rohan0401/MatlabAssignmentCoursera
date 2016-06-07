function grade = letter_grade(grade)
if grade >= 91
    grade = 'A';
elseif grade >= 81 && grade <= 90
    grade = 'B';
elseif grade >= 71 && grade <= 80
     grade = 'C';
elseif grade >= 61 && grade <= 70
     grade = 'D';
else
    grade = 'F';
end
