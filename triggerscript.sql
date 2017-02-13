Create  trigger softdelete on Employee  instead of Delete

AS

Begin
Declare @EmployeeIDs int

Select @EmployeeIDs = deleted.ID
from deleted;

Update Employee
set Active = 0
where  @EmployeeIDs = ID;

end;