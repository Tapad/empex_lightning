# Empex

To search for authors by first name
GET http://localhost:4000/?query={authors(first_name:david){id,first_name,last_name,email}}


To create a new author
POST http://localhost:4000/?query=mutation CreateAuthor {author(first_name:"David",last_name:"Newell",username:"rustedgrail",email:"beta@alumni.rice.edu"){id,first_name}}

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
