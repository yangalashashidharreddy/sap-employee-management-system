# SAP Employee Management System

A SAP Fiori and CAP learning project for managing employee records, departments, leave requests, and approval workflows, with an employee dashboard.

> **Status: In development.** Only the data model is in place so far. The service, handlers, and Fiori screens are planned.

## Problem Statement

HR teams often keep employee details, leave balances, and approvals in separate spreadsheets and email threads. This makes approvals slow and leave records hard to audit. This project explores how a SAP CAP application with a Fiori interface can keep these processes in one place.

## Planned Features

- Employee records with department assignment.
- Department management.
- Leave requests with a submit, approve, and reject flow.
- Approval workflow with the approver recorded on each decision.
- Employee dashboard showing leave status and counts by department.

## Technologies

- SAP Fiori elements and SAP UI5
- SAP Cloud Application Programming Model (CAP), with Java where appropriate
- Core Data Services (CDS) for the data model
- OData V4 for the API
- H2 for local development
- Maven for the Java build

## Architecture

```
db/      CDS data model (employees, departments, leave requests)
srv/     CDS service definitions and business logic (planned)
app/     SAP Fiori user interface (planned)
```

## Current Files

- `db/employees.cds`: the starting data model.

## Original Source and Attribution

This project is based on [SAP-samples/fiori-tools-samples](https://github.com/SAP-samples/fiori-tools-samples). Its license and copyright notices will be retained and checked before any code from that sample is added.

## My Contribution

I am designing the employee, department, and leave request data model and planning the approval workflow. Code will be added as each part is built and verified.

## Author

**Yangala Shashidhar Reddy**
B.Tech in Computer Science and Engineering (Data Science), Rajeev Gandhi Memorial College of Engineering and Technology, April 2026

- GitHub: [yangalashashidharreddy](https://github.com/yangalashashidharreddy)
- LinkedIn: [yangalashashidharreddy](https://www.linkedin.com/in/yangalashashidharreddy)
- Email: yangalashashidharreddy@gmail.com

## License

Apache License 2.0. See [LICENSE](LICENSE).
