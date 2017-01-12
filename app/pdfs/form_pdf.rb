class FormPdf < Prawn::Document
  def initialize(submission)
    super(top_margin: 70)
    @submissions = Submission.order("id DESC").all
    title
    submission_id
  end

  def title
    text "Exam Schedule", size: 30, style: :bold
  end

  def submission_id
    table submission_id_all do
      style(row(0), font_style: :bold, size: 9)
      style(columns(1..3), align: :right)
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def submission_id_all
    [["Student", "Conflict", "Extra Time (%)", "Computer", "Am or Pm", "Teacher", "Subject"]] +
    @submissions.map do |submission|
      [submission.student.name, submission.conflict, submission.extra_time, submission.computer, submission.am_pm, submission.teacher.name, submission.subject.name]
    end
  end
end
