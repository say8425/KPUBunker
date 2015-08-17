module LecturesHelper
  def makeGradeString(lecture)
    grade = lecture.grade
    case
      when grade <= 1.0
        'F'
      when grade <= 2.0
        'E'
      when grade <= 3.0
        'D'
      when grade <= 4.0
        'C'
      when grade <= 5.0
        'B'
      when grade <= 6.0
        'A'
    end
  end
end
