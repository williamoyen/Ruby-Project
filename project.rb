class Company
  def initialize(compName, numEmp, numDep)
    @companyName = compName
    @numEmployees = numEmp
    @numDepartments = numDep
  end

  def get_companyName()
    return @companyName
  end

  def get_departmentNumber()
    return @numDepartments
  end
  
  def get_employeeNumber()
    return @numEmployees
  end

  def set_numEmployees(num)
    @numEmployees += num
  end

  def set_companyName(name)
    @companyName = name
  end

  def set_numDepartments(num)
    @numDepartments += num
  end
  
  def to_s
    puts "Company Name: #{@companyName}"
    puts "Number of Employees: #{@numEmployees}"
    puts "Number of Departments: #{@numDepartments}"
  end

end #Ends Company Class

class Department < Company
  def initialize(depId, depName, depSize)
    @departmentId = depId
    @departmentName = depName
    @size = depSize
  end

  def get_departmentId()
    return @departmentId
  end

  def set_departmentName(name)
    @departmentName = name
  end

  def get_departmentName()
    return @departmentName 
  end

  def set_size(num)
    @size += num
  end

  def get_departmentSize()
    return @size 
  end

  def to_s
    puts "Department Id: #{@departmentId}"
    puts "Department Name: #{@departmentName}"
    puts "Number of Employees in the department: #{@size}"
  end

end#Ends Department Class

class Employee < Department
  def initialize(empId, empName, empAddress, empPhone, jobTitle, pay)
    @employeeId = empId
    @name = empName
    @address = empAddress
    @phoneNumber = empPhone
    @title = jobTitle
    @salary = pay
  end

  def set_name(empName)
    @name = empName
  end

  def set_address(empAddress)
    @address = empAddress
  end

  def set_phoneNumber(empPhone)
    @phoneNumber = empPhone
  end

  def set_title(jobTitle)
    @title = jobTitle
  end

  def set_salary(pay)
    @salary = pay
  end

  def get_employeeId()
    return @employeeId
  end
  
  def get_employeeName()
    return @name
  end
  
  def get_employeeAddress()
    return @address
  end
  
  def get_employeePhoneNumber()
    return @phoneNumber
  end
  
  def get_employeeTitle()
    return @title
  end
  
  def get_employeeSalary()
    return @salary
  end

  def to_s
    puts "Employee Id: #{@employeeId}"
    puts "Name: #{@name}"
    puts "Address: #{@address}"
    puts "Phone Number: #{@phoneNumber}"
    puts "Job Title: #{@title}"
    puts "Salary: #{@salary}"
  end

end#Ends Employee Class

def menu
  puts("1. Create new Department")
  puts("2. Create new Employee")
  puts("3. Edit Information")
  puts("4. Print")
  puts("5. Quit")
  print("Enter your choice: ")
  choice = gets.chomp.to_i
  return choice
end

def createDepartment()
  print("Enter Department Id: ")
  tempId = gets.chomp
  print("Enter Department Name: ")
  tempName = gets.chomp
  print("Enter Number of Employees: ")
  tempNumEmp = gets.chomp
  
  department = Department.new(tempId, tempName, tempNumEmp)
  return department
end

def createEmployee()
  print("Enter Employee Id: ")
  tempId = gets.chomp
  print("Enter Employee Name: ")
  tempName = gets.chomp
  print("Enter Address: ")
  tempAddress = gets.chomp
  print("Enter Phone Number: ")
  tempNumber = gets.chomp
  print("Enter Job Title: ")
  tempTitle = gets.chomp
  print("Enter Salary: ")
  tempSalary = gets.chomp
  
  employee =Employee.new(tempId, tempName, tempAddress, tempNumber, tempTitle, tempSalary)
  return employee
end

def editDepartment(depArray)
  puts("1. Edit Department Name")
  puts("2. Edit Department Size")
  print("Enter your choice: ")
  choice = gets.chomp.to_i
  puts
  if choice == 1
    print("Enter department name: ")
    name = gets.chomp.upcase
    for item in depArray
      if item.get_departmentName().upcase == name
        print("Enter new Name: ")
        newName = gets.chomp
        item.set_departmentName(newName)
        puts("New department name is now: #{item.get_departmentName()}")
        
      else
        puts("Department is not in the system")
  
      end
    end#For loop

  elsif choice == 2 
    print("Enter department name: ")
    name = gets.chomp.upcase
    for item in depArray
      if item.get_departmentName() == name
        print("Enter new Size: ")
        newName = gets.chomp.to_i
        item.set_departmentSize(newSize)
        puts("New Size of #{item.get_departmentName()} is now: #{item.get_departmentSize()}")
      else
        puts("Department is not in the system")
      end
    end
  else
    print("Invalid Choice")
  end
end #closes editDepartment function 

def editEmployee(empArray)

  print("Enter Employee Id: ")
  empId = gets.chomp
  puts

  puts("1. Edit Employee Name")
  puts("2. Edit Employee Address")
  puts("3. Edit Employee Phone Number")
  puts("4. Edit Employee Job Title")
  puts("5. Edit Employee Salary")
  print("Enter your choice: ")
  choice = gets.chomp.to_i
  puts
  case choice
  when 1
    for item in empArray
      if item.get_employeeId() == empId
        print("Enter new Name: ")
        newName = gets.chomp
        item.set_name(newName)
        puts("New Employee name is now: #{item.get_employeeName()}")
        
      else
        puts("Employee is not in the system")
  
      end
    end#For loop case 1

  when 2 
    for item in empArray
      if item.get_employeeId() == empId
        print("Enter new Address: ")
        newAddress = gets.chomp
        item.set_address(newAddress)
        puts("New Address of #{item.get_employeeName()} is now: #{item.get_employeeAddress()}")
      else
        puts("Employee is not in the system")
      end
    end#For loop case 2

  when 3
    for item in empArray
      if item.get_employeeId() == empId
        print("Enter Phone Number(000-000-0000 format): ")
        newNumber = gets.chomp
        item.set_phoneNumber(newNumber)
        puts("New Phone Number of #{item.get_employeeName()} is now: #{item.get_employeePhoneNumber()}")
      else
        puts("Employee is not in the system")
      end
    end#For loop case 3

  when 4
    for item in empArray
      if item.get_employeeId() == empId
        print("Enter New Job Title: ")
        newTitle = gets.chomp
        item.set_title(newTitle)
        puts("New Job Title of #{item.get_employeeName()} is now: #{item.get_employeeTitle()}")
      else
        puts("Employee is not in the system")
      end
    end#For loop case 4

  when 5
    for item in empArray
      if item.get_employeeId() == empId
        print("Enter New Salary: ")
        newSalary = gets.chomp.to_i
        item.set_salary(newSalary)
        puts("New Salary of #{item.get_employeeName()} is now: $#{item.get_employeeSalary()}")
      else
        puts("Employee is not in the system")
      end
    end#For loop case 5

  end# Ends case
end #Ends editEmployee function 

def printDepartments(depArray)
  depFile = File.open("departments.txt", "w")
  for item in depArray
    depFile.puts("Department Id: #{item.get_departmentId}")
    depFile.puts("Department Name: #{item.get_departmentName}")
    depFile.puts("Department Size: #{item.get_departmentSize}")
    depFile.puts()
  end
  puts
  depFile.close()
end

def printEmployees(empArray)
  empFile = File.open("employees.txt", "w")
  for item in empArray
    empFile.puts("Employee ID: #{item.get_employeeId}")
    empFile.puts("Name: #{item.get_employeeName}")
    empFile.puts("Address: #{item.get_employeeAddress}")
    empFile.puts("Phone Number: #{item.get_employeePhoneNumber}")
    empFile.puts("Job Title: #{item.get_employeeTitle}")
    empFile.puts("Salary: #{item.get_employeeSalary}")
    empFile.puts()
  end
  empFile.close()
end

def printAll(comp, depArray, empArray)

  comFile = File.open("company.txt", "w")

  comFile.puts("Company Name: #{comp.get_companyName}")
  comFile.puts("Number of Company Departments: #{comp.get_departmentNumber}")
  comFile.puts("Number of Company Employees: #{comp.get_employeeNumber}")
  comFile.puts()

  comFile.puts("Departments:")

  for dep in depArray
    comFile.puts()
    comFile.puts("Department Id: #{dep.get_departmentId}")
    comFile.puts("Department Name: #{dep.get_departmentName}")
    comFile.puts("Department Size: #{dep.get_departmentSize}")
    comFile.puts()
  end

  comFile.puts("Employees:")

  for emp in empArray
    comFile.puts()
    comFile.puts("Employee ID: #{emp.get_employeeId}")
    comFile.puts("Name: #{emp.get_employeeName}")
    comFile.puts("Address: #{emp.get_employeeAddress}")
    comFile.puts("Phone Number: #{emp.get_employeePhoneNumber}")
    comFile.puts("Job Title: #{emp.get_employeeTitle}")
    comFile.puts("Salary: #{emp.get_employeeSalary}")
    comFile.puts()
  end
  comFile.close()
end

#START OF MAIN PROGRAM
print("Enter Company Name: ")
companyName = gets.chomp

print("Enter Number of Employees: ")
numEmp = gets.chomp

print("Enter Number of Departments: ")
numDep = gets.chomp

company = Company.new(companyName, numEmp, numDep)
departments = Array.new
employees = Array.new

loop do
  choice = menu()
  case choice
  when 1
    newDep = createDepartment()
    departments.append(newDep)
  when 2
    newEmp = createEmployee()
    employees.append(newEmp)
  when 3
    puts
    puts("1. Edit Dpertment Information")
    puts("2. Edit Employee Informtion")
    puts("3. Go Back")
    print("Enter your choice: ")
    puts
    option = gets.chomp.to_i
      case option 
      when 1
        editDepartment(departments)
      when 2
        editEmployee(employees)
      when 3
      end
  when 4
    puts
    puts("1. Print Department Data")
    puts("2. Print Employee Data")
    puts("3. Print all Data")
    puts("4. Go Back")
    print("Enter your choice: ")
    option = gets.chomp.to_i
    puts()
      case option 
      when 1
        printDepartments(departments)
      when 2
        printEmployees(employees)
      when 3
        printAll(company, departments, employees)
      when 4
      end
  when 5
    puts("Goodbye! Have a great day!")
    break
  end
  break if choice == 5
end