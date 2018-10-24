module ResumeHelper
  def experience_header_original exp
    org = exp.organization
    title = exp.job_title
    location = exp.location
    date_from = exp.text_from ? exp.text_from : exp.date_from
    date_to = exp.text_to ? exp.text_to : exp.date_to

    org = "#{org} (#{exp.short_org})" if org && exp.short_org

    org = org ? "<span class=\"organization\">#{org}</span>" : nil
    title = title ? "<span class=\"job_title\">#{title}</span>" : nil
    location = location ? "<span class=\"location\">#{location}</span>" : nil

    description = [org,title,location].reject {|i| i.nil?}.join(', ')
    dates = [date_from,date_to].reject {|i| i.nil?}.join(' — ')
    dates = dates ? "<span class=\"date_range\">#{dates}</span>" : ''

    (description+dates).html_safe
  end
end
