# Task Management API

A robust and scalable task management REST API built with NestJS, MongoDB, and TypeScript. This application provides a foundation for managing tasks with authentication capabilities.

## 🚀 Features

- **RESTful API** - Clean and intuitive API endpoints
- **MongoDB Integration** - Persistent data storage using Mongoose ODM
- **Authentication Module** - Ready for user authentication and authorization
- **TypeScript** - Full type safety and modern JavaScript features
- **Docker Support** - Easy deployment with Docker and Docker Compose
- **Testing** - Jest-based unit and e2e testing setup
- **Code Quality** - ESLint and Prettier for consistent code style
- **Environment Configuration** - Flexible configuration management

## 🛠️ Tech Stack

- **Framework**: [NestJS](https://nestjs.com/) v10
- **Language**: TypeScript
- **Database**: MongoDB with [Mongoose](https://mongoosejs.com/)
- **Validation**: class-validator, class-transformer
- **Testing**: Jest
- **Containerization**: Docker & Docker Compose

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (v16 or higher)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) (optional, for containerized deployment)
- [MongoDB](https://www.mongodb.com/) (if running locally without Docker)

## 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/task-management.git
   cd task-management
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   
   Create a `.env` file in the root directory:
   ```env
   PORT=3000
   MONGO_URI=mongodb://localhost:27017/task_management_db
   ```

## 🏃 Running the Application

### Development Mode

Run the application in development mode with hot-reload:

```bash
npm run start:dev
```

The API will be available at `http://localhost:3000`

### Production Mode

1. Build the application:
   ```bash
   npm run build
   ```

2. Start the production server:
   ```bash
   npm run start:prod
   ```

### Debug Mode

Run the application in debug mode:

```bash
npm run start:debug
```

## 🐳 Docker Deployment

### Using Docker Compose (Recommended)

The easiest way to run the entire application stack:

```bash
docker-compose up -d
```

This will start:
- The NestJS application on port `3000`
- MongoDB database on port `27017`

To stop the services:

```bash
docker-compose down
```

To view logs:

```bash
docker-compose logs -f
```

### Using Docker

Build the Docker image:

```bash
docker build -t task-management .
```

Run the container:

```bash
docker run -p 3000:3000 -e MONGO_URI=mongodb://host.docker.internal:27017/task_management_db task-management
```

## 📁 Project Structure

```
task-management/
├── src/
│   ├── authentication/          # Authentication module
│   │   └── authentication.module.ts
│   ├── taskManagement/          # Task management module
│   │   ├── application/         # Business logic layer
│   │   │   └── app.service.ts
│   │   ├── ui/                  # Presentation layer
│   │   │   ├── app.controller.ts
│   │   │   └── app.controller.spec.ts
│   │   └── taskManagement.module.ts
│   ├── app.module.ts            # Root application module
│   └── main.ts                  # Application entry point
├── test/                        # E2E tests
│   ├── app.e2e-spec.ts
│   └── jest-e2e.json
├── docker-compose.yml           # Docker Compose configuration
├── Dockerfile                   # Docker image configuration
├── package.json                 # Project dependencies
├── tsconfig.json                # TypeScript configuration
└── README.md                    # Project documentation
```

## 🧪 Testing

### Unit Tests

Run unit tests:

```bash
npm run test
```

Run tests in watch mode:

```bash
npm run test:watch
```

Run tests with coverage:

```bash
npm run test:cov
```

### E2E Tests

Run end-to-end tests:

```bash
npm run test:e2e
```

## 📝 Code Quality

### Linting

Check and fix code style issues:

```bash
npm run lint
```

### Formatting

Format code using Prettier:

```bash
npm run format
```

## 🔌 API Endpoints

### Health Check

- **GET** `/` - Returns a simple hello message

_Note: More endpoints will be added as the application evolves._

## 🔐 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Application port | `3000` |
| `MONGO_URI` | MongoDB connection string | Required |

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Behnam SeydAbadi**

## 🙏 Acknowledgments

- [NestJS](https://nestjs.com/) for the amazing framework
- All contributors who help improve this project

---

⭐ If you find this project helpful, please consider giving it a star!
