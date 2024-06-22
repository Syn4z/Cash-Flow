# Cash flow

![money](./cash_flow/screenshots/background.jpg)

A tool that let's you track your expenses, income, transfers and much more. It is an application for everything you can do with your money. This project includes a NestJS server for backend operations, a Flutter application for cross-platform mobile development, and uses Prisma for database access.

## Technologies Used

- **Backend**: NestJS
- **Database**: Prisma with PostgreSQL
- **Mobile Development**: Flutter

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them.

- Node.js (v16 or above)
- Docker (for database and containerization)
- Flutter SDK (for mobile development)

### Installing

A step by step series of examples that tell you how to get a development environment running.

#### Server Setup

1. Navigate to the server directory:

```sh
cd nest_server/nest-app
```
2. Install the dependencies:
```sh
npm install
```
3. Set up your `.env` file based on the `.env.example` provided in the `nest_server/nest-app directory`. Make sure to replace the placeholder values with your actual database credentials and secrets.

4. Build the server:
```sh
npm run build
```
5. Start the server:
```sh
npm run start:prod
```

### Docker Setup
To containerize your application, ensure Docker is installed and running on your machine. Then, execute the following commands:
```sh
cd nest_server/nest-app
docker-compose up --build
```

This will build the Docker image for your server and start the containers as defined in your `docker-compose.yml` and `Dockerfile`.

### Mobile App Setup
Refer to the `cash_flow` directory for mobile app development. Ensure you have Flutter installed and set up correctly.

1. Navigate to the Flutter app directory:
```sh
cd cash_flow
```
2. Get Flutter dependencies:
```sh
flutter pub get
```
3. Run the app on your device or emulator:
```sh
flutter run
```

### Contributors
- [Sufferal](https://github.com/Sufferal)
- [alya1007](https://github.com/alya1007)
- [Dr-Win](https://github.com/Dr-Win)