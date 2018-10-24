# This data is for a sample résumé, so you can see a preview quickly. None of it is real data.
Profile.create(
  descriptor: 'Sample Résumé',
  name: 'Ibb Marsh',
  address: '1234 Knowhere Dr, Atlantis, AO',
  phone: '1234-56-7890',
  email: 'youdontwant@to.know',
  primary: true,
  preferred_name: 'Ibb',
  linkedin_url: 'https://www.linkedin.com/in/ibb-marsh-12345/',
  github_url: 'https://github.com/ibbmarsh',
)

style = Style.create(name: 'Original', uid: 'original', filename: 'resume_stylefiles/original.css')
layout = ResumeLayout.create(name: 'Original', uid: 'original', experience_header: 'experience_header_original')

resume = Resume.create(
  purpose: 'Primary',
  primary: true,
  profile: Profile.first,
  preferred_job: 'God-King of Squiggles',
  preferred_style: style,
  preferred_layout: layout,
  preferred_pdf_style: style,
  preferred_pdf_layout: layout,
)
resume.save!


section = Section.create(title: 'My Work', uid: 'my_work')
resume.sections << section

experience = Experience.create(organization: 'SpaceX', job_title: 'Intern', date_from: Date.new(2010,1,1), date_to: Date.new(2016,1,1), section: section)
Item.create(text: 'Did some space stuff.', experience: experience)
Item.create(text: 'Did some other space stuff.', experience: experience)
item = Item.create(text: 'Did some non-space stuff.', experience: experience)
resume.items.delete(item)

experience = Experience.create(organization: 'The Moon Company', job_title: 'Janitor', location: 'The Moon', date_from: Date.new(2016,5,1), text_to: 'ongoing', exact_days_unknown: true, section: section)
Item.create(text: 'Did some moon stuff.', experience: experience)


section = Section.create(title: 'My Works', uid: 'my_works', display_condensed: true)
resume.sections << section

experience = Experience.create(organization: 'The Dancing Machine', location: 'cathub.com/dance', section: section)
Item.create(text: 'It dances', experience: experience)
Item.create(text: 'It likes cats', experience: experience)

experience = Experience.create(organization: 'The Hugging Machine', section: section)
Item.create(text: 'It hugs', experience: experience)
Item.create(text: 'It doesn\'t like cats', experience: experience)
