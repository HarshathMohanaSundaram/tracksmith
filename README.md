# Tracksmith

Tracksmith is a time tracking application built with Ruby on Rails that helps users track their progress on various topics, skills, or projects. Users can create topics, set time estimations, log time spent, and track their experience points (XP) as they complete their work.

## System Requirements

* Ruby 3.2+ (Rails 8.0.2)
* PostgreSQL
* Node.js & Yarn (for asset compilation)

## Getting Started

### Clone the repository

```bash
git clone <repository-url>
cd tracksmith
```

### Setup the application

```bash
# Install dependencies
bundle install

# Setup the database
bin/rails db:create db:migrate db:seed

# Start the Rails server
bin/rails server
```

The application will be available at http://localhost:3000

## Docker Setup

The application can also be run using Docker:

```bash
# Build the Docker image
docker build -t tracksmith .

# Run the container
docker run -p 3000:3000 tracksmith
```

## Features

* **User Management**: Create accounts and manage user profiles
* **Topic Tracking**: Create topics with themes, skill sets, and time estimations
* **Time Logging**: Log time spent on different topics with descriptions
* **Progress Tracking**: Mark topics as completed and track XP gained
* **Dashboard**: Overview of in-progress and completed topics

## Database Structure

* **Users**: Manage user accounts
* **Topics**: Track projects or skills being developed
* **Time Logs**: Record time spent on specific topics

## Testing

Run the test suite with:

```bash
bin/rails test
bin/rails test:system
```

## Deployment

This application is configured for deployment with Kamal. See the `config/deploy.yml` file for deployment configuration.


## Security

Run Brakeman security scanner to check for vulnerabilities:

```bash
bin/brakeman
```

## Code Quality

The project uses RuboCop with Rails Omakase configuration:

```bash
bin/rubocop
```

## License

This project is licensed under the MIT License.
