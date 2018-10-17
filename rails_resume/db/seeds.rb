# This data is for a sample résumé, so you can see a preview quickly. None of it is real data.
Profile.create(descriptor: 'Sample Résumé', name: 'Ibb Marsh', address: '1234 Knowhere Dr, Atlantis, AO', phone: '1234-56-7890', email: 'youdontwant@to.know', primary: true)
Resume.create(purpose: 'Primary', primary: true, profile: Profile.first)
Section.create(title: 'My Work', display_order: 0, resume: Resume.first)
Section.create(title: 'My Works', display_order: 1, resume: Resume.first)
Experience.create(organization: 'The Moon Company', job_title: 'Janitor', location: 'The Moon', date_from: Date.new(2016,5,1), text_to: 'ongoing', display_order: 0, section: Section.find_by(title: 'My Work'))
Experience.create(organization: 'SpaceX', job_title: 'Intern', date_from: Date.new(2010,1,1), date_to: Date.new(2016,1,1), display_order: 1, section: Section.find_by(title: 'My Work'))
Experience.create(organization: 'The Hugging Machine', display_order: 0, section: Section.find_by(title: 'My Works'))
Experience.create(organization: 'The Dancing Machine', display_order: 1, section: Section.find_by(title: 'My Works'))
