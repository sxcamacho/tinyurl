# TinyUrl Client

### Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```

### Run your unit tests
```
npm run test:unit
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).


# TinyUrl Server

### Project setup
```
bundle install
```
### Development config

Add .env file at root directoy with the next content:
```
WEB_CLIENT_URL=<DOMAIN:PORT>
```

### Requeriements

- [MongoDB](https://www.mongodb.com/)

### Project run
```
bundle exec ruby server.rb   
```