#Create workspace using
#terraform workspace new Development
#Select Development worksapce
terraform workspace select Production
#Set GCP credentials
export GOOGLE_APPLICATION_CREDENTIALS="C:\\Users\\T929417\\Documents\\Training\\gcp\\dave-a-training-prod.json"
#set your prompt to your folder path _development
PS1='\w_production $ '