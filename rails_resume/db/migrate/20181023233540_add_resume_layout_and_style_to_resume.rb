class AddResumeLayoutAndStyleToResume < ActiveRecord::Migration[5.2]
  def change
    add_reference :resumes, :preferred_style, foreign_key: true
    add_reference :resumes, :preferred_layout, foreign_key: true
    add_reference :resumes, :preferred_pdf_style, foreign_key: true
    add_reference :resumes, :preferred_pdf_layout, foreign_key: true
    add_column :resumes, :preferred_job, :string
  end
end
