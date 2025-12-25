# Highly Available RDS & Aurora Database

Hands-on lab from the AWS Certified Solutions Architect Associate (SAA-C03) course by Stephane Maarek – Databases module.

This lab demonstrates production-grade relational database setups on AWS with a focus on high availability, read scaling, and resiliency.

## Objective
Deploy fault-tolerant and scalable database solutions using RDS and Aurora, simulating real-world requirements.

## Architectures Created

### 1. RDS MySQL/PostgreSQL Multi-AZ
- Multi-AZ deployment for automatic failover
- Primary instance in one AZ, standby replica in another
- Automated backups enabled (7-day retention by default)
- Manual snapshot created
- Custom Parameter Group (optional modifications shown)
- Security Group allowing connections only from trusted sources

### 2. Aurora Cluster (MySQL/PostgreSQL compatible)
- Aurora cluster with one writer instance and 1-2 reader instances
- Instances spread across multiple Availability Zones
- Writer endpoint and Reader endpoint tested
- Storage autoscaling enabled
- Cluster cache management and failover priority (if configured)

## Key Features Demonstrated
- Synchronous replication in Multi-AZ RDS
- Automatic failover (tested/promoted if done)
- Read scaling with Aurora replicas or RDS Read Replicas
- Connection using writer vs reader endpoints
- Backup and restore process
- Point-in-time recovery window
- Enhanced monitoring and performance insights (overview)

## Database Operations Performed
- Connected via MySQL Workbench / command line from local machine or EC2
- Created database and sample table
- Inserted and queried data
- Verified data replication to replicas

## Screenshots
![RDS Multi-AZ instance overview](./screenshots/rds-multi-az.png)
![RDS automated backups and snapshots](./screenshots/rds-backups.png)
![Aurora cluster with writer and reader instances](./screenshots/aurora-cluster.png)
![Aurora reader endpoint and replicas across AZs](./screenshots/aurora-replicas.png)
![Successful connection and query execution](./screenshots/db-connection-query.png)
![Failover test or replica promotion (if performed)](./screenshots/failover-test.png)
![Security Group and Parameter Group configuration](./screenshots/security-parameter-group.png)

## What I Learned
- Differences between RDS and Aurora (performance, storage, replication)
- Multi-AZ vs Read Replicas vs Aurora replicas
- Failover behavior and recovery time
- Writer vs Reader endpoints for read scaling
- Backup strategies (automated, snapshots, PITR)
- Best practices for security and parameter tuning
- When to choose RDS vs Aurora in real projects

Future enhancement: Connect this database to the web application from the High Availability lab.