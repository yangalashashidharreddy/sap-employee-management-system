namespace my.employee;

using {cuid, managed} from '@sap/cds/common';

/**
 * Departments in the organization.
 */
entity Departments : cuid, managed {
    name      : String(111) not null;
    employees : Association to many Employees
                    on employees.department = $self;
}

/**
 * Employee records.
 */
entity Employees : cuid, managed {
    firstName        : String(111) not null;
    lastName         : String(111) not null;
    email            : String(255);
    jobTitle         : String(111);
    department       : Association to Departments;
    manager          : Association to Employees;
    joiningDate      : Date;
    leaveBalanceDays : Integer default 0;
}

type LeaveType : String enum {
    annual;
    sick;
    unpaid;
}

type LeaveStatus : String enum {
    submitted;
    approved;
    rejected;
}

/**
 * Leave requests with the approver recorded on each decision.
 */
entity LeaveRequests : cuid, managed {
    employee   : Association to Employees not null;
    type       : LeaveType not null;
    startDate  : Date not null;
    endDate    : Date not null;
    days       : Integer not null;
    status     : LeaveStatus default 'submitted';
    approver   : Association to Employees;
    decisionNote : String(255);
}
