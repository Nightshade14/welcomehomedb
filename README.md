# WelcomeHome Donation Management System

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Database Schema](#database-schema)
- [Endpoints](#endpoints)
- [How It Works](#how-it-works)
- [Error Handling](#error-handling)

---

## Project Overview

WelcomeHome Donation Management System is a web application that facilitates tracking and managing donations made to a charity organization. The system enables supervisors and staff members to manage items and donors, record donations, and ensure proper allocation and storage of donated items.

---

## Getting Started

### Setting up the Database

There are two files in the `sql/` folder in this directory:

1. `schema.sql` defines the tables necessary for this application.
2. `inserts.sql` is sample data to test the application.

Copy and paste these scripts into MySQL and run it as needed.

### Running the Flask Application

1. Set the Flask Environment Variables (MAC):

```
export FLASK_APP = WelcomeHomeDB
export FLASK_DEBUG = 1 # if developing
```

2. On Windows, replace the `export` with `set`
3. Ensure there is an `instance` folder outside of this directory. This is where the `config.py` will reside. The expected variables in `config.py` are:

```
MYSQL_HOST = ''
MYSQL_USER = ''
MYSQL_PASSWORD = ''
MYSQL_DB = 'WelcomeHomeDB'
```

4. After verifying steps 1 - 3, run the following command (outside the directory):
```
flask run
```

- **User Authentication**:
  - Only authorized users can access the system.
  - Different roles (e.g., Supervisor, Staff, Client) with role-based access.
- **Donor Validation**:
  - Ensure donors are registered before recording donations.
- **Donation Tracking**:
  - Record details about donated items, including description, materials, and categorization.
  - Support for items with or without pieces.
- **Dynamic Storage Management**:
  - Validate and allocate `roomNum` and `shelfNum` based on available locations.
- **Responsive UI**:
  - Dynamic and interactive forms for managing items and pieces.
- **Error Handling**:
  - Provide user-friendly error messages for invalid inputs.

## Assumptions

We make the following assumptions for this application:

1. The set of roles is predefined, and can be dynamic in the sense that new roles can be added to the existing set of roles
2. The combination of (shelfNum, roomNum) has no boundary in terms of items it can hold (though this is probably not a good one to make realistically).

- Location is UNIQUE.

3. There is only one of each item in the Database. That is, items will not appear again through donations.
4. If an item does not has pieces to it, the whole item itself is considered as a piece, with pieceNum = 1.



## Alternate Setup:

### Project setup:
- Install uv
- Run `uv sync --extra dev`
- Run `source .venv/bin/activate` to activate your env
- Run the project with `python -m flask run`

- Ruff is a formatter and linter. You can format the python files with `uv run ruff format .`

Note: It is important to have the right version of mysql-connector package. So, install the same dependecies (already done with `uv sync`). (It took significant amount of time to figure out that I had the old mysql.connector package with the new mysql 8.0+ version.)

### MySQL setup:
- `sudo mysql`
- `CREATE USER 'welcomehomeadmin'@'localhost' IDENTIFIED BY '1234';`
- `FLUSH PRIVILEGES;`

Now you are ready to run the code as discussed above.
