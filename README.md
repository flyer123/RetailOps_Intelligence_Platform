# 🧠 Lakehouse Data Reliability & Intelligence Platform

A full-stack Data Engineering platform that simulates a real-world e-commerce analytics system with a strong focus on **data reliability, observability, anomaly detection, and lakehouse architecture**.

The project combines modern data engineering tools with heavy Python-based platform components to emulate internal data platforms used in production environments.

---

# 🚀 Key Objectives

This platform is designed to solve real-world business problems:

- Ensure **data quality and trustworthiness** across all pipelines
- Detect **data anomalies and operational incidents early**
- Provide a scalable **lakehouse architecture (bronze/silver/gold)**
- Enable **end-to-end data lineage and observability**
- Support **self-service analytics with BI dashboards**
- Build reusable **Python-based data platform tooling**

---

# 🏗️ Architecture Overview

```
Python Data Generator / APIs
            |
            v
         MinIO (S3 Storage)
            |
            v
        Apache Airflow
   (Orchestration & Scheduling)
            |
            v
        Apache Spark
 (ETL / Bronze → Silver layers)
            |
            v
     Databricks (Delta Tables)
            |
            v
           dbt
   (Gold Layer / Data Marts)
            |
            v
        Superset
   (BI Dashboards & Analytics)

+ Python Platform Services:
- Data Quality Engine
- Schema Drift Detection
- Anomaly Detection System
- Metadata & Lineage Tracker
- Reporting Engine
```

---

# 🧰 Tech Stack

## Core Infrastructure

- Docker / Docker Compose
- Apache Airflow
- Apache Spark
- MinIO (S3-compatible storage)
- PostgreSQL (metadata + Airflow DB)
- Redis (Airflow broker/cache)

## Data & Analytics

- dbt (transformations & testing)
- Databricks (Delta Lake / external warehouse)
- Apache Superset (visualization layer)

## Python Platform Layer (HEAVY USAGE)

- Data ingestion SDK
- Custom validation framework
- Schema drift detection engine
- Anomaly detection (statistical + ML-based)
- Metadata & lineage extraction service
- Automated reporting engine (HTML/PDF)

---

# 📊 Data Sources

The system uses a combination of real and synthetic datasets:

## 1. E-commerce Dataset

**Olist Brazilian E-Commerce dataset**  
🔗 [https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

Includes:

- orders
- customers
- payments
- products
- reviews
- logistics

## 2. NYC Taxi Dataset (optional streaming simulation)

🔗 [https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)

Used for:

- large-scale Spark processing
- anomaly detection scenarios
- partitioning and performance testing

## 3. Synthetic Event Generator (Python)

Custom-built generator simulating:

- user sessions
- product views
- cart activity
- purchases
- fraud-like patterns
- traffic spikes

---

# 🧠 Key Features

## 📥 1. Data Ingestion Framework 🚧

- Python-based ingestion SDK
- MinIO file uploads
- schema validation before landing
- idempotent batch processing
- partition-aware ingestion

## ⚙️ 2. Airflow Orchestration 📅

- DAG-based pipeline management
- dynamic DAG generation
- retry + failure handling
- backfill and replay support

## ⚡ 3. Spark Processing Engine 📅

- Bronze → Silver transformations
- deduplication & normalization
- join-heavy data modeling
- scalable batch processing

## 🧱 4. dbt Transformation Layer 📅

- Gold-level business models
- data tests and validation
- documentation generation
- metrics layer

## 🧪 5. Data Quality Engine (Python) 📅

Custom-built framework for:

- null checks
- range validation
- schema enforcement
- referential integrity
- freshness checks

Includes:

- YAML-based rule definitions
- reusable validation classes

## 🚨 6. Schema Drift Detection 📅

- detects changes in upstream data contracts
- alerts on breaking schema changes
- supports versioned schema evolution

## 📉 7. Anomaly Detection System 📅

- statistical monitoring (z-score, rolling averages)
- ML-based detection (Isolation Forest)
- business anomaly detection:
  - revenue spikes
  - shipment delays
  - fraud patterns

## 📊 8. BI & Reporting Layer 📅

### Apache Superset dashboards:

- revenue tracking
- operational KPIs
- pipeline health
- anomaly reports

### Python-generated reports:

- HTML summaries
- automated incident reports

## 🧭 9. Metadata & Lineage Engine 📅

- tracks dataset dependencies
- integrates with Airflow + dbt metadata
- builds lineage graph of transformations
- supports debugging and auditability

---

# 🧪 Data Model (Simplified)

- `bronze_orders`
- `silver_orders`
- `gold_sales_metrics`
- `gold_customer_metrics`
- `gold_delivery_performance`
- `gold_anomaly_events`

---

# 🐳 Running the Platform

```bash
docker-compose up -d
```

**Services:**

- Airflow: [http://localhost:8080](http://localhost:8080)
- Superset: [http://localhost:8088](http://localhost:8088)
- MinIO: [http://localhost:9001](http://localhost:9001)
- Spark UI: [http://localhost:4040](http://localhost:4040)

---

# 📦 Project Structure

```
.
├── airflow/                 # DAGs
├── spark/                   # ETL jobs
├── dbt/                     # transformations
├── superset/               # dashboards config
├── minio/                  # storage config
├── python_platform/
│   ├── ingestion/
│   ├── validation/
│   ├── anomaly/
│   ├── lineage/
│   ├── reporting/
│   └── sdk/
├── datasets/
├── docker-compose.yml
└── README.md
```

---

# 🧠 Why This Project Matters

This project simulates a real production-grade data platform with:

- Data reliability engineering
- Operational observability
- Distributed data processing
- Automated quality enforcement
- ML-assisted monitoring
- Full lakehouse architecture

It reflects the type of internal systems used in modern data-driven companies.

---

# 📈 Skills Demonstrated

- Data Engineering (Spark, dbt, Airflow)
- DataOps & Reliability Engineering
- Python platform engineering
- Distributed systems thinking
- Data quality & governance
- Lakehouse architecture design
- Observability and monitoring
- BI & analytics engineering

---

# 📌 Future Enhancements

- Kafka-based streaming ingestion
- Kubernetes deployment
- Real-time anomaly streaming alerts
- ML model training pipeline (MLOps extension)
- Feature store integration
- RBAC + data governance layer

---

# 🧠 License

This project is for educational and portfolio purposes.