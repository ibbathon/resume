# This data is for a sample résumé, so you can see a preview quickly. None of it is real data.
Profile.create(descriptor: 'Sample Résumé', name: 'Ibb Marsh', address: '1234 Knowhere Dr, Atlantis, AO', phone: '1234-56-7890', email: 'youdontwant@to.know', primary: true)
resume = Resume.create(purpose: 'Primary', primary: true, profile: Profile.first)
resume.save!


section = Section.create(title: 'My Work')
resume.sections << section

experience = Experience.create(organization: 'SpaceX', job_title: 'Intern', date_from: Date.new(2010,1,1), date_to: Date.new(2016,1,1), section: section)
Item.create(text: 'Did some space stuff.', experience: experience)
Item.create(text: 'Did some other space stuff.', experience: experience)
item = Item.create(text: 'Did some non-space stuff.', experience: experience)
resume.items.delete(item)

experience = Experience.create(organization: 'The Moon Company', job_title: 'Janitor', location: 'The Moon', date_from: Date.new(2016,5,1), text_to: 'ongoing', exact_days_unknown: true, section: section)
Item.create(text: 'Did some moon stuff.', experience: experience)


section = Section.create(title: 'My Works', display_condensed: true)
resume.sections << section

experience = Experience.create(organization: 'The Dancing Machine', location: 'cathub.com/dance', section: section)
Item.create(text: 'It dances', experience: experience)
Item.create(text: 'It likes cats', experience: experience)

experience = Experience.create(organization: 'The Hugging Machine', section: section)
Item.create(text: 'It hugs', experience: experience)
Item.create(text: 'It doesn\'t like cats', experience: experience)
