PROJECT OVERVIEW:

AWS_DBT_Snowflake/
├── README.md                           # This file
├── pyproject.toml                      # Python dependencies
├── main.py                             # Main execution script
│
├── SourceData/                         # Raw CSV data files
│   ├── bookings.csv
│   ├── hosts.csv
│   └── listings.csv
│
├── DDL/                                # Database schema definitions
│   ├── ddl.sql                         # Table creation scripts
│   └── resources.sql
│
└── aws_dbt_snowflake_project/         # Main dbt project
    ├── dbt_project.yml                 # dbt project configuration
    ├── ExampleProfiles.yml             # Snowflake connection profile
    │
    ├── models/                         # dbt models
    │   ├── sources/
    │   │   └── sources.yml             # Source definitions
    │   ├── bronze/                     # Raw data layer
    │   │   ├── bronze_bookings.sql
    │   │   ├── bronze_hosts.sql
    │   │   └── bronze_listings.sql
    │   ├── silver/                     # Cleaned data layer
    │   │   ├── silver_bookings.sql
    │   │   ├── silver_hosts.sql
    │   │   └── silver_listings.sql
    │   └── gold/                       # Analytics layer
    │       ├── fact.sql
    │       ├── obt.sql
    │       └── ephemeral/              # Temporary models
    │           ├── bookings.sql
    │           ├── hosts.sql
    │           └── listings.sql
    │
    ├── macros/                         # Reusable SQL functions
    │   ├── generate_schema_name.sql    # Custom schema naming
    │   ├── multiply.sql                # Math operations
    │   ├── tag.sql                     # Categorization logic
    │   └── trimmer.sql                 # String utilities
    │
    ├── analyses/                       # Ad-hoc analysis queries
    │   ├── explore.sql
    │   ├── if_else.sql
    │   └── loop.sql
    │
    ├── snapshots/                      # SCD Type 2 configurations
    │   ├── dim_bookings.yml
    │   ├── dim_hosts.yml
    │   └── dim_listings.yml
    │
    ├── tests/                          # Data quality tests
    │   └── source_tests.sql
    │
    └── seeds/                          # Static reference data
