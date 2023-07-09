## Structure of repository (include my test results)  
1. **my_test_results folder**  
Include summary.csv file and result folder with html report  
Open result/index.html file to see test results 
2. **Slotegrator_Test_Task.jmx**  
Jmeter scenario test file  
3. **email_addresses.csv**  
This csv file used for writing new players e-mails (transaction Register a new player) and reading it (transaction GetOnePlayer)  
4. **user.properties**  
This properties used for Generate html report  
5. **start.cmd**
This command create a results folder and run test
  
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
2. **Add *jmeter_folder*/bin to PATH**
3. **Click on start.cmd**
4. After 15 minutes you will be able to **find summary.csv file** and **generate html report** in /report folder
  
## After test  
1. **Open "Slotegrator_Test_Task.jmx"** using Jmeter GUI
1. **Enable DeleteAllPlayers transaction**  
2. Click right mouse button on DeleteAllPlayers and **click Start**  
3. All **players will be deleted** and **email_addresses.csv will be cleared**  
