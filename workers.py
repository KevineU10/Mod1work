import random

def generate_workers(num_workers):
  workers = []
  for _ in range(num_workers):
    worker = {
      'name': f'Worker {_+1}',
      'salary': random.randint(5000, 35000),
      'gender': random.choice(['Male', 'Female'])
    }
    workers.append(worker)
  return workers

def generate_payment_slip(worker):
  try:
    employee_level = ''
    if 10000 < worker['salary'] < 20000:
      employee_level = 'A1'
    elif 7500 < worker['salary'] < 30000 and worker['gender'] == 'Female':
      employee_level = 'A5-F'

    print(f"Payment Slip for {worker['name']}")
    print(f"Salary: ${worker['salary']}")
    print(f"Employee Level: {employee_level}")
    print(f"Employee Gender: {worker['gender']}")
    print("-------------------------")
  except Exception as e:
    print(f"Error processing worker: {e}")

if __name__ == "__main__":
  num_workers = 400
  workers = generate_workers(num_workers)

  for worker in workers:
    generate_payment_slip(worker)
