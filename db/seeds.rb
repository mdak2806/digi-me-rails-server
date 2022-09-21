
User.destroy_all;

u1 = User.create!(
    name: 'Shae',
    email: 'shae@gmail.com',
    password: 'chicken',
    premium: false, 
    display_name: 'Shae'
)
u2 = User.create!(
    name: 'Wen',
    email: 'wen@gmail.com',
    password: 'chicken',
    premium: false, 
    display_name: 'Wen'
)
u3 = User.create!(
    name: 'Craig',
    email: 'craig@gmail.com',
    password: 'chicken',
    premium: false, 
    display_name: 'Craig'
)
u4 = User.create!(
    name: 'Mohamad',
    email: 'mo@gmail.com',
    password: 'chicken',
    premium: false, 
    display_name: 'Mo'
)


puts "Done! Created #{ User.count } User:";
puts User.pluck( :name).join( ', ' );


################################################

# Pet.destroy_all

p1 = Pet.create!(
    name: "Mo",
    age: 89,
    species: "owlet",
    accessories: true,
    level: 1,
    experience: 5,
    user_id: u1.id  

)

p2 = Pet.create!(
    name: "Shae",
    age: 5,
    species: "pink",
    accessories: false,
    level: 2,
    experience: 50,
    user_id: u2.id   

 
)

p3 = Pet.create!(
    name: "Craig",
    age: 205,
    species: "dude",
    accessories: true,
    level: 20,
    experience: 80,
    user_id: u3.id   


)

p4 = Pet.create!(
    name: "Wen",
    age: 20,
    species: "dude",
    accessories: true,
    level: 8,
    experience: 10,
    user_id: u4.id   

)


puts "create #{ Pet.count } pets.";
puts Pet.pluck( :name).join( ', ' );


#############################
Message.destroy_all


# Message.destroy_all;

m1 = Message.create!(
    title: "Victory!",
    content: "I won! I won! What a team we make, thanks for looking after me so I can do my best. I'm a bit thirsty after that battle, can I have a drink? Maybe you should have some water too!"
)
m2 = Message.create!(
    title: "Defeat...",
    content: "Oh well, I'll get them next time. Maybe I need some more food, always need to be fueled up! Have you eaten recently? Can't expect me to do my best if you aren't doing your best too!"
)
m3 = Message.create!(
    title: "Food",
    content: "YESSSSSSSS!!! FOOOOOOOOOD!!- *cough* I mean, thaaaaank yooouuu. Make sure you're eating too, I can't be big and strong if YOU aren't being big and strong as well!"
)
m4 = Message.create!(
    title: "Drink",
    content: "*sluuuuuurp* AHHH! Delicious! Make sure you're staying hydrated as well, don't want you turning into a shrivelled old prune!"
)
m5 = Message.create!(
    title: "SWEEEEEEETS",
    content: "OMG I'M SO LUCKY THANK YOU SO MUCH!!! Treats are the BEST- in moderation of course! *heh heh*"
)

puts "create #{ Message.count } messages.";
puts Message.pluck( :title).join( ', ' );
m2.pets << p1 << p2