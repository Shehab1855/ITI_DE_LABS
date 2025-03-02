use lab1
//1
db.createCollection("Staff");


//2
db.Staff.insertOne({
    "_id": 1,
    "name": "shehab",
    "age": 22,
    "gender": "male",
    "department": "data"
});


db.Staff.find({});

//3
db.Staff.insertMany([
    {   _id: 2,
        name: "Ali Ahmed",
        age: 20,
        gender: "male",
        department: "HR"
    },
    {    _id: 3,
        name: "Sara Khan",
        age: 25,
        gender: "female",
        managerName: "Mr. Smith",
        department: "Finance"
    },
    {   _id: 4,
        name: "Mike Lee",
        age: 15,
        gender: "male",
        DOB: "2010-05-15"
    }
]);
//4.1
db.Staff.find({});
//4.2
db.Staff.find({"gender":"male"});
//4.3
db.Staff.find({age: { "$gt": 20, "$lt": 25 }});
//4.4
db.Staff.find({ age: 25, gender: "female" });
//4.5
db.Staff.find({ age: 20, gender: "female" });



//5
db.Staff.find({age:15});
db.Staff.updateOne(
  { age: 15 },
  { $set: { name: "new" } }
);


//6
 db.Staff.find()
db.Staff.updateMany(
   {},
   { $set: { department: "AI" } }
   );

//7
db.test.insertMany([
    {   _id: 2,
        name: "Ali Ahmed",
        age: 20,
        gender: "male",
        department: "HR"
    },
    {    _id: 3,
        name: "Sara Khan",
        age: 25,
        gender: "female",
        managerName: "Mr. Smith",
        department: "Finance"
    },
    {   _id: 4,
        name: "Mike Lee",
        age: 15,
        gender: "male",
        DOB: "2010-05-15"
    }
]);




//8
    db.test.find({age:15});
    db.test.deleteOne({age:15});
    
//9
    db.test.deleteMany({gender:"male"});
    
//10
    db.test.deleteMany({});
    db.test.find({});













