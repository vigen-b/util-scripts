#!/bin/bash

# https://stackoverflow.com/questions/10969953/how-to-output-a-multiline-string-in-bash

cat << EOF
Paste following in mongo shell replacing 'my_collection' with your collection name.

mr = db.runCommand({
  "mapreduce" : "my_collection",
  "map" : function() {
    for (var key in this) { emit(key, null); }
  },
  "reduce" : function(key, stuff) { return null; }, 
  "out": "my_collection" + "_keys"
})
db[mr.result].distinct("_id")
EOF
