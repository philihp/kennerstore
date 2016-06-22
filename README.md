# Kennerstore
Kennerspiel Storage Services

This service will server an API for use in Kennerspiel the website, as well as mobile apps. It handles persistence, and serves all endpoints in a REST interface. The intention here is to be simple, so I can start developing the fun stuff.

## The Game Plan

- [ ] Setup temp gateway to Weblabora-Svc to prove it's possible. This will later be used when pulling an Instance.
- [ ] Allow user to sign up
- [ ] Allow user to sign in
- [ ] Allow user to create an instance of a game
- [ ] View the current state of an instance's board
- [ ] Allow a user a list of new moves to an instance... it should return the entire move list as well as the board.
- [ ] Allow user to rewind a move away from an instance. Think about how sometimes a game might not like this, such as rewinding a 'commit' move.

## Entities

### User

- [ ] User - One and only one user
- [ ] Primary email is the UID. Don't support multiple emails (yet).
- [ ] Salt. Random string created when first created.
- [ ] Password (hashed with Salt).

### Instance

- [ ] Instance - An instance of a game being created and played. Over time, most of these will be "done".
- [ ] Game (string). Should just be `weblabora` for now.
- [ ] State - In a way this is computed, but it's really useful. `new`, `running`, `done`, `incomplete`.
- [ ] Seed - Random integer set when created. Do not ever let this be shown, since it seeds randomziers.

### Player

- [ ] Player - A situation where a user takes part in an instance being played
- [ ] User.
- [ ] Instance.

### Move

- [ ] Move - A move in an instance.
- [ ] Instanc.
- [ ] String - move command given by user. Could be multiline.
- [x] Order - Not really necessary, intuitively this could just order by ID.
- [ ] User - person who submitted this move.
