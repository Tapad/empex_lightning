# Using GraphQL for your Elixir APIs

To view the GraphQL schema
web/schema/types.ex

To view the GraphQL queries
web/schema.ex

To view how queries are resolved
web/resolvers/author_resolver.ex
web/resolvers/post_resolver.ex
web/resolvers/comment_resolver.ex

To inspect the schema
GET [http://localhost:4000/?query={__schema{types{name}}}](http://localhost:4000/?query={__schema{types{name}}})
GET [http://localhost:4000/?query={__type(name:Post){fields{name,type{kind,name}}}}](http://localhost:4000/?query={__type(name:Post){fields{name,type{kind,name}}}})

To get all of a model
GET [http://localhost:4000/?query={authors{id,first_name,last_name,email}}](http://localhost:4000/?query={authors{id,first_name,last_name,email}})
GET [http://localhost:4000/?query={posts{id,title,body}}](http://localhost:4000/?query={posts{id,title,body}})
GET [http://localhost:4000/?query={comments{id,text}}](http://localhost:4000/?query={comments{id,text}})

To get a model by id
GET [http://localhost:4000/?query={author(id:1){id,first_name,last_name,email}}](http://localhost:4000/?query={author(id:1){id,first_name,last_name,email}})
GET [http://localhost:4000/?query={post(id:1){id,title,body}}](http://localhost:4000/?query={post(id:1){id,title,body}})
GET [http://localhost:4000/?query={comment(id:1){id,text}}](http://localhost:4000/?query={comment(id:1){id,text}})

To search for models by equality
GET [http://localhost:4000/?query={authors(last_name:Newell){id,first_name,last_name,email}}](http://localhost:4000/?query={authors(last_name:Newell){id,first_name,last_name,email}})

To create a new author
POST [http://localhost:4000/?query=mutation {author(first_name:"David",last_name:"Newell",username:"rustedgrail",email:"beta@alumni.rice.edu"){id,first_name}}](http://localhost:4000/?query=mutation {author(first_name:"David",last_name:"Newell",username:"rustedgrail",email:"beta@alumni.rice.edu"){id,first_name}})

To start your Phoenix app:
`mix phoenix.server`

To learn more
http://absinthe-graphql.org/
https://facebook.github.io/react/blog/2015/05/01/graphql-introduction.html
https://learngraphql.com/
