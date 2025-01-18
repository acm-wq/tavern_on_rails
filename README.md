# Hey! What's this?

Tavern on the Rails is my personal non-profit project, created for fun and learning new technologies. Here you will find an example of working with Ruby on Rails, PostgreSQL, JavaScript and other tools. 
The project is great for:
- Learning other people's code and best practices.
- Practices working with modern web technologies.
- Experiments and improvements - feel free to fork and offer your ideas!

Contributions are welcome! 😊

## Requirements

```bash
ruby ~> 3.3.6
nodejs ~> 23.5.0
postgres ~> 16.6
```

## Getting Started

Check to see if it's running postgresql

```bash
systemctl status postgresql
```

Clone the project

```bash
git clone https://github.com/acm-wq/tavern_on_rails
cd tavern_on_rails
```

Install dependencies and apply migrations

```bash
bundle install

rails db:create db:migrate
```

Start server 

```bash
bin/dev
```

The server will be available at: http://localhost:3000

## How can I help?

- 🐞 Report bugs to Issues.

- 💡 Suggest new features or improvements.

- ✨ Make pull requests with fixes or new features.

## Todo

- [ ] Add a rating for the rooms
- [ ] Add a personal user account with a photo
- [ ] Improve room retrieval requests and add pagination

- [X] Add list users in admin_panel
- [X] Add photos to the rooms
- [X] Add admin_panel
- [X] Add a top and bottom panel to the site