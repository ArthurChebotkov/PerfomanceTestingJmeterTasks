## Structure of repository (include test results)  
1. **test_results folder**  
Include summary.csv file and result folder with html report  
Open result/index.html file to see test results 
2. **Slotegrator_Test_Task.jmx**  
Jmeter scenario test file  
3. **email_addresses.csv**  
This csv file used for writing new players e-mails (transaction Register a new player) and reading it (transaction GetOnePlayer)  
4. **user.properties**  
This properties used for Generate html report  
  
## Test describe  
This test include next transactions:  
1. **Register a new player**  
10% of all truncations  
2. **GetOnePlayer**  
60% of all truncations  
3. **GetAllPlayer**  
30% of all truncations. 
The load on all truncations(in total) increases in steps 5, 10, 15 rps. Step duration is 5 minutes.  

Also it include a next "disable" transaction. 
4. **DeleteAllPlayers**  
This transaction delete all players and clear email_addresses.csv file for next tests.  
  
## How to run it  
1. **Clone the repository**  
2. **Open "Slotegrator_Test_Task.jmx"** using Jmeter and click on the Run/Start  
3. After 15 minutes you will be able to **find summary.csv file** in user root folder (for example: user/summary.csv)  
4. You can **generate html report** click on the Tools/Generate HTML report and using summary.csv and user.properties in this repository.  
  
## After test  
1. **Enable DeleteAllPlayers transaction**  
2. Click right mouse button on DeleteAllPlayers and **click Start**  
3. All **players will be deleted** and **email_addresses.csv will be cleared**  
