#Create workspace using
#terraform workspace new Development
#Select Development worksapce
terraform workspace select Development
#Set GCP credentials
$env:GOOGLE_APPLICATION_CREDENTIALS="C:\\Users\\T929417\\Documents\\Training\\gcp\\gcp-key-terraform.json"
#set your prompt to your folder path _development
$CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf
$CmdPromptCurrentFolder=$CmdPromptCurrentFolder+"_Development $"
function Prompt { $CmdPromptCurrentFolder }