# UoM_MapReduce-vs-Spark

1. Login in to AWS learner lab
2. Click start lab
3. Once AWS got green color please click AWS
4. Once you click it opens the AWS Console
5. Type EMR and Create cluster (Hive and for Spark)
<img width="954" alt="1  EMR Cluster" src="https://user-images.githubusercontent.com/60679528/222948211-f68e678d-d520-4505-b6bf-411f808db8d0.PNG">

6. Then go to Security groups for Master and add a rule for IP4 and IP6 enabling SSH
7. Once done. please open PuTTY.
8. Paste the SSH host name in the PuTTY and enable the SO_KEEPALIVE option)
9. Under SSH -> Auth section please upload the EC2 key
10. You are ready to start EMR
<img width="956" alt="2  EMR Console View" src="https://user-images.githubusercontent.com/60679528/222948349-06028621-43b8-4042-99c1-98a0daf1b177.PNG">
11. Go the AWS console and type S3. 
12. Then create a bucket for the dataset that we are planning to analyse
13. Once upload copy the data location.
<img width="945" alt="3  S3 Folder" src="https://user-images.githubusercontent.com/60679528/222948409-380549e2-d6d2-485b-b228-1956b51141b0.PNG">
