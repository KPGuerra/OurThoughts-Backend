# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Thought.destroy_all
Letter.destroy_all

puts "Creating Users!"
10 times do
    User.create!(username: Faker::Internet.unique.username, password_digest:"password", email: Faker::Internet.unique.email, name: Faker::Name.name, pronouns: ["She/Her", "They/Them", "He/Him", "She/They", "He/They", "She/He", "She/He/They"].sample, bio: Faker::TvShows.TheFreshPrinceOfBelAir.unique.quote, avatar: Faker::Avatar.unique.image)
end

puts "Creating Thoughts!"

Thought.create!(user_id: User.all.sample.id, title: "I Cant Sleep", content: "Lately I cant sleep! I go to bed around 10pm and I toss and turn all night! Any tips?", sentiment:"neutral", tags:["Sleep Issues", "Need Advice"], emotion:"Tired", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "I Cant Concentrate!", content: "I cannot focus on my work. I have a big project due soon and I lose focus really quickly. What should I do??", sentiment:"negative", tags:["No Motivation", "Need Advice", "Procrastination"], emotion:"Nervous", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Bad At Interviews", content: "I have always been bad at interviews. I get so nervous and I always freeze. I have an interview coming up and I really don't want to mess up", sentiment:"negative", tags:["Anxiety", "Need Advice", "Job Hunting"], emotion:"Nervous", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Give Me Some Good News!", content: "I've been having a rough week so I want to celebrate YOUR achievements. Tell anything good that you have done or has happend to you (no matter how small!)", sentiment:"positive", tags:["Let's Celebrate Together"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Covid Lockdown", content: "I miss seeing all my friends and family. This pandemic has made me feel so lonely", sentiment:"negative", tags:["Anxiety", "Lonely", "Covid Blues"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Inspire Me", content: "I need some inspiration for my project. Tell me about your passions! It can be about anything! :)", sentiment:"positive", tags:["Creativity", "Inspiration", "Passions"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Inner Saboteur", content: "How do you guys handle the feeling of never being enough? I hope you are all healthy and safe!", sentiment:"neutral", tags:["Self-doubt", "Need Advice", "Self-Sabotage"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "You Are Not Alone", content: "I don't know who needs to hear this but never think you are alone! If need someone to vent to , message me! Or send me a letter, I will listen <3", sentiment:"positive", tags:["In This Together", "Vent To Me", "Here For You"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Fav Song", content: "I want to add more songs in my Spotify playlist! Tell me about your favorite song and I will listen to it! (Bonus: tell why it's your favorite song)", sentiment:"positive", tags:["Music", "Sharing Is Caring"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Coming Out", content: "After a lot of thought, I decided that I want to comeout to my parents as Pansexual but Im so nervous!", sentiment:"neutral", tags:["Coming Out", "Nervous", "LGBTQIA+"], emotion:"Nervous", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "College Troubles", content: "I'm worried that I am so behind everyone else in college. I know shouldn't but I always compare myself to my college friends. They have interships and jobs lined up while I don't. I am happy for them but I also envy them. I wish I cpuld be on the same pace.", sentiment:"negative", tags:["Anxious", "Worried About The Future", "Self-Doubt"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Stage Fright", content: "I have my first live performance coming up and I am SO nervous. What if I mess up? What if I am not that great of a singer?", sentiment:"negative", tags:["Anxiety", "Worried"], emotion:"Nervous", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Long Distance Relationships", content: "How do you guys handle long distance relationships? My partner is going to move across the country for a new job. I am happy for them and I love them but I am worried what will happen to us", sentiment:"negative", tags:["Relationship Advice", "Long Distance"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "My Dog Passed Away", content: "Last week, my dog died :( He was a cute german sheperd and I miss him so much. I had him since I was in middle school. I feel like people don't get it because he was my pet. Everyone expects me to get over it so easily just because he technically wasn't a family member. Any advice?", sentiment:"negative", tags:["Grief", "Loss", "Pet"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Big Groups", content: "I have always been a shy person :( Everytime I am in big groups, I get so nervous. My friend invited me to a party but I don't know anyone there. How can I be more social?", sentiment:"neutral", tags:["Nervous", "Anxiety In Big Groups", "Parties"], emotion:"Nervous", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "My Partner's Birthday", content: "My partner's birthday is next week but we haven't been able to see eachother because of the pandemic. How can I make their birthday special without risking my health??", sentiment:"neutral", tags:["Covid", "Need Advice", "Relationship Advice"], emotion:"Confused", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Tell About Your Day", content: "I hope you all are doing well <3 Feel free to send me a letter about your day even if its bad (vent if you need to!). Take care!", sentiment:"positive", tags:["Spread Joy", "Vent To Me", "I Am Listening"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Starting Therapy Soon", content: "I finally got the courage to make an appointment with a therapist. I never had a therapy session. I am a little nervous. What should I expect?", sentiment:"neutral", tags:["Therapy", "Need Advice", "Nervous"], emotion:"Excited", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Meditation Newbie", content: "I have problems focus on my work. I tend to overthink alot and go on tangents. My therapist reccomended meditation to me but I never done that before. Any tips?", sentiment:"neutral", tags:["Meditation Help", "Need Advice"], emotion:"Tired", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Helping A Friend", content: "Other than being an ear to vent, how can I help a friend that has a lot of negtive thoughts. I am worried about them and I want to do more for them.", sentiment:"negative", tags:["Depression", "Need Advice"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Breakup", content: "How do you guys deal with a breakup?", sentiment:"negative", tags:["End Of A Long Relationship", "Need Advice", "Heartbreak"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Made It Through My Presentation", content: "I had a presentation yesterday. I was so nervous about it because public speaking scares me but I did really well! I am so happy!", sentiment:"positive", tags:["End Of A Long Relationship", "Need Advice", "Heartbreak"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Self-Love", content: "What is something you really love about yourself?", sentiment:"positive", tags:["Love Yourself", "Happy Thoughts", "Positivity"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Ending A Relationship", content: "I want to end my relationship after 4 years. I don't want to hurt them but how should I go about it?", sentiment:"negative", tags:["Breakup", "Need Advice", "Scared"], emotion:"Sad", Faker::Date.between(from: 7.days.ago, to: Date.today))
Thought.create!(user_id: User.all.sample.id, title: "Thank You", content: "I just want to say thank you to everyone who has ever responded to me. Your kind words have helped me and it means a lot to me. I hope you are having a good day!", sentiment:"positive", tags:["Grateful", "Gracias", "Thankful"], emotion:"Happy", Faker::Date.between(from: 7.days.ago, to: Date.today))


