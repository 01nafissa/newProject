DepartmentBatch db = new DepartmentBatch();
Id JobId = Database.executeBatch(db, 5);
system.debug('JOB ID is ' + JobId);