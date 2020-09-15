1. {"name":"babelgum"}, project:{"name":1, "category_code":0,"_id":0} 
2. {"number_of_employees":{$gte:5000}}; sort:number_of_employees, limit 20
3. {$or:[{founded_year:2005},{founded_year:2001},{founded_year:2002},{founded_year:2003},{founded_year:2004},{founded_year:2005}]}, project: {"name":1, "founded_year":1} 
4. {$and{"ipo.valuation amount":{$gte:100.000.000}},{founded_year: {$lt: 2010}}]};project= {"name": 1,"ipo": 1,"_id": 0}
5. {$and:[{number_of_employees:{$lte:1000}},sort= {founded_year:{$lte:2005}}]}; sort={number_of_employees:-1} ; limit= 10
6. {partners:{$exists:true,$not:{$size:0}}}
7.{category_code:{$eq: null}}
8. {$and:[{number_of_employees:{$gte:100}},{number_of_employees:{$lte:1000}}]}; {name:1, number_of_employees:1, _id:0}
9. sort={ipo:-1}
10. sort={number_of_employees:-1} limit=10
11. {founded_month:{$gt:6}};sort=1000
12. {$and:[founded_year:{$lt:2000}},{"acquisition.price_amount":{$gte:10000000}}]}
13. {"acquisition.acquired_year":{$gt:2010}};{name=1,acquisition:1,_id:0}
14. {name:1,founded_year:1, _id:0}; {founded_year:-1}
15. {founded_day:{$lte:7}}; {"acquisition.price_amount":-1}; limit=10
16. {$and:[{category_code:'web'},{number_of_employees:{$gt:4000}}]}; sort={number_of_employees:1}
17. {$and:[{"acquisition.price_amount":{$gt:10000000}},acquisition.price_currency_code:'EUR'}]}
18. {"acquisition.acquired_month":{$lte:3}; {name:1, acquisition:1, _id:0}
19 {$and:[{founded_year:{$gte:2000}},{founded_year:{$lte:2010},{acquisition.acquired_year:{$gte:2011}}]}


happy coding! :heart: :rocket:
