# auroralabs-devops-assignment
aurora labs company - devops engineer position assignment

 In order to run it, please write this command :
 # docker-compose up -d  
 
  Credentials in order to login into jenkins :
 Username : **fadyabuhatoum**
 Password : **0509529668**
 
 This will run my fadyabuhatoum/jenkins-aurora-labs:latest image .
 The jenkins build will build and run the python image ( named : fadyabuhatoum/devops-is-great-aurora-labs ).
 I build this python image using the Dockerfile . 
 Finally we print "DevOps is gret" .
 
 In order to schedule this job for checking the pull requests merging, I triggered my job every 45 minutes using */45 * * * * in build periodically jenkins parameter. 
 
 I tried to use the webhook url in order to initiate nitiate a python job on any merge request .
 But we can not do it , because webhook in github can not get localhost URL. 
 
 Pictures for this process :
![webhook URL ](https://user-images.githubusercontent.com/60876615/201412869-3c6a7e9b-6d95-4ebd-8cca-14ae18ddfd47.jpeg)
![webhook URL2](https://user-images.githubusercontent.com/60876615/201412888-ec77d500-d594-4232-9e24-91b1a97c937c.jpeg)

Pictures for our job :
![WhatsApp Image 2022-11-12 at 1 43 16 PM](https://user-images.githubusercontent.com/60876615/201473972-1b671b77-3090-4059-82c0-1ba49a6220e5.jpeg)
![WhatsApp Image 2022-11-12 at 1 43 08 PM](https://user-images.githubusercontent.com/60876615/201473976-0067f2ca-bbdd-4548-8f3e-7ed9be1003a9.jpeg)
