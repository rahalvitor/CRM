# Crm

DB MODEL : https://dbdiagram.io/d/CRM-Database-650a4e4502bd1c4a5ee50df8 



MVP PLAN: 

1) Store 
    field :name, :string
    field :email, :string
    field :cpf, :string
    field :birthday, :date
2) all CRUD functions 
3) Add test case 
4) Create API's to all CRUD Functions 
5) Add Authentication to our API 
6) Create AutoDocs



mix phx.gen.context Users user users name:string cpf:string email:string birthday:string