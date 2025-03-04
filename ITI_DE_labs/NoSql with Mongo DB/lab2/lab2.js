db.inventory.insertMany([
  {
    code: "xyz",
    tags: [
      "school",
      "book",
      "bag",
      "headphone",
      "appliance"
    ],
    qty: [
      {
        size: "S",
        num: 10,
        color: "blue"
      },
      {
        size: "M",
        num: 45,
        color: "blue"
      },
      {
        size: "L",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "abc",
    tags: [
      "appliance",
      "school",
      "book"
    ],
    qty: [
      {
        size: "6",
        num: 100,
        color: "green"
      },
      {
        size: "6",
        num: 50,
        color: "blue"
      },
      {
        size: "8",
        num: 100,
        color: "brown"
      }
    ]
  },
  {
    "_id": 111,
    "item": "TBD",
    "stock": 0,
    "info": {
      "publisher": "1111",
      "pages": 430
    },
    "tags": [
      "technology",
      "computer"
    ],
    "ratings": [
      {
        "by": "ijk",
        "rating": 4
      },
      {
        "by": "lmn",
        "rating": 5
      }
    ],
    "reorder": false
  },
  {
    "_id": 3,
    "item": "XYZ123",
    "stock": 15,
    "info": {
      "publisher": "5555",
      "pages": 150
    },
    "tags": [
      
    ],
    "ratings": [
      {
        "by": "xyz",
        "rating": 5
      }
    ],
    "reorder": false
  },
  {
    "_id": 4,
    "address": "2030 Martian Way",
    "zipCode": "90698345"
  },
  {
    "_id": 5,
    "address": "156 Lunar Place",
    "zipCode": 43339374
  },
  {
    "_id": 6,
    "address": "2324 Pluto Place",
    "zipCode": "3921412"
  },
  {
    "_id": 7,
    "address": "55 Saturn Ring",
    "zipCode": "88602117"
  },
  {
    "_id": 8,
    "address": "104 Venus Drive",
    "zipCode": [
      "834847278",
      "1893289032"
    ]
  },
  {
    code: "efg",
    tags: [
      "school",
      "book"
    ],
    qty: [
      {
        size: "S",
        num: 10,
        color: "blue"
      },
      {
        size: "M",
        num: 100,
        color: "blue"
      },
      {
        size: "L",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "ijk",
    tags: [
      "electronics",
      "school"
    ],
    qty: [
      {
        size: "M",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "ijk",
    tags: [
      "ssl",
      "school"
    ],
    qty: [
      {
        size: "M",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "ijk",
    tags: [
      "security",
      "school"
    ],
    qty: [
      {
        size: "M",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "ijk",
    tags: [
      "ssl",
      "security"
    ],
    qty: [
      {
        size: "M",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    _id: 9,
    item: {
      name: "ab",
      code: "123"
    },
    qty: 15,
    tags: [
      "A",
      "B",
      "C"
    ]
  },
  {
    _id: 10,
    item: {
      name: "cd",
      code: "123"
    },
    qty: 20,
    tags: [
      "B"
    ]
  },
  {
    _id: 11,
    item: {
      name: "ij",
      code: "456"
    },
    qty: 25,
    tags: [
      "A",
      "B"
    ]
  },
  {
    _id: 12,
    item: {
      name: "xy",
      code: "456"
    },
    qty: 30,
    tags: [
      "B",
      "A"
    ]
  },
  {
    _id: 13,
    item: {
      name: "mn",
      code: "000"
    },
    qty: 20,
    tags: [
      [
        "A",
        "B"
      ],
      "C"
    ]
  },
  {
    "item": "nuts",
    "quantity": 30,
    "carrier": {
      "name": "Shipit",
      "fee": 3
    }
  },
  {
    "item": "bolts",
    "quantity": 50,
    "carrier": {
      "name": "Shipit",
      "fee": 4
    }
  },
  {
    "item": "washers",
    "quantity": 10,
    "carrier": {
      "name": "Shipit",
      "fee": 1
    }
  },
  {
    item: "canvas",
    qty: 100,
    size: {
      h: 28,
      w: 35.5,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "journal",
    qty: 25,
    size: {
      h: 14,
      w: 21,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "mat",
    qty: 85,
    size: {
      h: 27.9,
      w: 35.5,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "mousepad",
    qty: 25,
    size: {
      h: 19,
      w: 22.85,
      uom: "cm"
    },
    status: "P"
  },
  {
    item: "notebook",
    qty: 50,
    size: {
      h: 8.5,
      w: 11,
      uom: "in"
    },
    status: "P"
  },
  {
    item: "paper",
    qty: 100,
    size: {
      h: 8.5,
      w: 11,
      uom: "in"
    },
    status: "D"
  },
  {
    item: "planner",
    qty: 75,
    size: {
      h: 22.85,
      w: 30,
      uom: "cm"
    },
    status: "D"
  },
  {
    item: "postcard",
    qty: 45,
    size: {
      h: 10,
      w: 15.25,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "sketchbook",
    qty: 80,
    size: {
      h: 14,
      w: 21,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "sketch pad",
    qty: 95,
    size: {
      h: 22.85,
      w: 30.5,
      uom: "cm"
    },
    status: "A"
  },
  {
    item: "journal",
    qty: 25,
    tags: [
      "blank",
      "red"
    ],
    dim_cm: [
      14,
      21
    ]
  },
  {
    item: "notebook",
    qty: 50,
    tags: [
      "red",
      "blank"
    ],
    dim_cm: [
      14,
      21
    ]
  },
  {
    item: "paper",
    qty: 100,
    tags: [
      "red",
      "blank",
      "plain"
    ],
    dim_cm: [
      14,
      21
    ]
  },
  {
    item: "planner",
    qty: 75,
    tags: [
      "blank",
      "red"
    ],
    dim_cm: [
      22.85,
      30
    ]
  },
  {
    item: "postcard",
    qty: 45,
    tags: [
      "blue"
    ],
    dim_cm: [
      10,
      15.25
    ]
  },
  {
    code: "xyz",
    tags: [
      "school",
      "book",
      "bag",
      "headphone",
      "appliance"
    ],
    qty: [
      {
        size: "S",
        num: 10,
        color: "blue"
      },
      {
        size: "M",
        num: 45,
        color: "blue"
      },
      {
        size: "L",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "abc",
    tags: [
      "appliance",
      "school",
      "book"
    ],
    qty: [
      {
        size: "6",
        num: 100,
        color: "green"
      },
      {
        size: "6",
        num: 50,
        color: "blue"
      },
      {
        size: "8",
        num: 100,
        color: "brown"
      }
    ]
  },
  {
    code: "efg",
    tags: [
      "school",
      "book"
    ],
    qty: [
      {
        size: "S",
        num: 10,
        color: "blue"
      },
      {
        size: "M",
        num: 100,
        color: "blue"
      },
      {
        size: "L",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    code: "ijk",
    tags: [
      "electronics",
      "school"
    ],
    qty: [
      {
        size: "M",
        num: 100,
        color: "green"
      }
    ]
  },
  {
    _id: 14,
    status: "a"
  },
  {
    _id: 15,
    sku: "abc123",
    quantity: 10,
    metrics: {
      orders: 2,
      ratings: 3.5
    }
  },
  {
    _id: 16,
    highScore: 800,
    lowScore: 200
  },
  {
    _id: 17,
    highScore: 800,
    lowScore: 200
  },
  {
    _id: 18,
    item: "Scarf",
    price: 10
  },
  {
    "_id": 19,
    "alias": [
      "The American Cincinnatus",
      "The American Fabius"
    ],
    "mobile": "555-555-5555",
    "nmae": {
      "first": "george",
      "last": "washington"
    }
  },
  {
    "_id": 20,
    "alias": [
      "My dearest friend"
    ],
    "mobile": "222-222-2222",
    "nmae": {
      "first": "abigail",
      "last": "adams"
    }
  },
  {
    "_id": 21,
    "alias": [
      "Amazing grace"
    ],
    "mobile": "111-111-1111",
    "nmae": {
      "first": "grace",
      "last": "hopper"
    }
  },
  {
    _id: 22,
    quantity: 250,
    instock: true,
    reorder: false,
    details: {
      model: "14QQ",
      make: "Clothes Corp"
    },
    tags: [
      "apparel",
      "clothing"
    ],
    ratings: [
      {
        by: "Customer007",
        rating: 4
      }
    ]
  },
  {
    "item": "chisel",
    "sku": "C001",
    "quantity": 4,
    "instock": true
  },
  {
    "item": "hammer",
    "sku": "unknown",
    "quantity": 3,
    "instock": true
  },
  {
    "item": "nails",
    "sku": "unknown",
    "quantity": 100,
    "instock": true
  },
  {
    "_id": 23,
    name: "Alice King",
    classAverage: 87.333333333333333
  },
  {
    "_id": 24,
    name: "Bob Jenkins",
    classAverage: "83.52"
  },
  {
    "_id": 25,
    name: "Cathy Hart",
    classAverage: "94.06"
  },
  {
    "_id": 26,
    name: "Drew Williams",
    classAverage: 93
  },
  {
    "_id": 27,
    "address": "2030 Martian Way",
    "zipCode": "90698345"
  },
  {
    "_id": 28,
    "address": "156 Lunar Place",
    "zipCode": "43339374"
  },
  {
    "_id": 29,
    "address": "2324 Pluto Place",
    "zipCode": "3921412"
  },
  {
    "_id": 30,
    "address": "55 Saturn Ring",
    "zipCode": "88602117"
  },
  {
    "_id": 31,
    "address": "104 Venus Drive",
    "zipCode": [
      "834847278",
      "1893289032"
    ]
  }
])
//////////////////////////////////////////////////////////////////////////////////////////
//1
db.createCollection("employees", {
   validator: {
      $jsonSchema: {
         bsonType: "object",
         required: ["name", "age", "department"],
         properties: {
            name: {
               bsonType: "string",
               description: "string and is required"},
            age: {
               bsonType: "int",
               minimum: 18,
               description: "int & at least 18"},
            department: {
               bsonType: "string",
               enum: ["HR", "Engineering", "Finance"],
               description: "allowed values: HR, Engineering, Finance"}
         }
      }
   }
});

//2
db.inventory.find({tags:{"$exists":true}});

// 3.	Find documents where the "status" field has a value in [A, B] using both the `$in` , `$or` operators.
db.inventory.find(
{   
    status:{"$in":["A","B"]}
    
    }
);

db.inventory.find(
    {
        $or:[
        {status:"A"},
        {status:"b"}
        ]}
    );
    
        
//4.	Find documents where the "tags" field does not contain values "ssl" or "security."
db.inventory.find(
        {tags:
            {"nin":["ssl", "security"]}}
        
        );
          
    
//55.	Find documents where the "qty" field is equal to 85
            
db.inventory.find(
            {
                qty: 85
                });

//6.	Find documents where the "tags" array contains all of the values [ssl, security] using the `$all` operator

db.inventory.find({ tags: { $all: ["ssl", "security"] } })


//7.	Find documents where the "tags" array has a size of 3
db.inventory.find({ tags: { $size: 3 } })

//8.	Find documents where the "tags" field is of type array.

db.inventory.find({ tags: { $type: "array" } })

//  ?////
///////////////9
db.inventory.updateOne(
   { item: "paper" },//filter
   {
      $set: { "size.uom": "meter" },//change
      $currentDate: { lastModified: true },
      $setOnInsert: { createdAt: new Date() }
   },
   { upsert: true }
);
   
   
db.inventory.updateMany(
   { item: "paper" },
   {
      $set: { "size.uom": "meter" },
      $currentDate: { lastModified: true }
   }
)


db.inventory.replaceOne(
   { item: "paper" },
   {
      item: "paper",
      size: { uom: "meter" },
      lastModified: new Date()
   },
   { upsert: true }
)
   
// 10
db.inventory.insertOne({ neme: "John Doe", ege: 25 })
db.inventory.updateOne(
   { neme: { $exists: true }, ege: { $exists: true } },
   {
      $rename: { "neme": "name", "ege": "age" }
   }
)
   
//11
   
db.collection.updateMany(
   {}, 
   { $unset: { age: "" } }
)

//12
   

db.collection.insertMany([
   { name: "John Doe", age: 25, salary: 5000, performance: 80 },
   { name: "Jane Smith", age: 30, salary: 7000, performance: 85 },
   { name: "Mike Johnson", age: 40, salary: 9000, performance: 75 }
]);
   
db.collection.updateMany({}, { $inc: { age: 1 } });
db.collection.updateMany({}, { $min: { salary: 1000 } });
db.collection.updateMany({}, { $max: { performance: 90 } });
db.collection.updateMany({}, { $mul: { salary: 1.1 } });

db.collection.find();
????????????????????
































