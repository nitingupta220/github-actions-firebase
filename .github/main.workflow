# Workflow name and the event where it can be deployed
workflow "Build and Deploy" {
  on = "push"
  resolves = ["Deploy"]
}

# First install all the dependencies with npm install using Github Aciton for npm
action "Install" {
  uses = "actions/npm@master"
  args = "install"
}

# Then build the project by using Github Action for npmm
action "Build" {
  needs = "Install"
  uses = "actions/npm@master"
  args = "run build"
}

# Finally deploy it to Firebase Hosting using Github Action for Firebase
action "Deploy" {
  needs = "Build"
#   this is the github action for firebase
  uses = "w9jds/firebase-action@master"
#   this is the command you have to specify 
  args = "deploy --only hosting"
#   these are environment variables
# 1. First is project id which you can get from the firebase console
# 2. Second is the folder we want to deploy, this will always be the build folder which we get from the previos Build action
  env = {
    PROJECT_ID = "fir-hosting-a44ed"
    PUBLIC_PATH = "build"
  }
#   this is the secret token from Firebase which you can get by typing ```firebase login:ci``` in the terminal, then you can set this in the secrets tab in the repo and here FIREBASE_TOKEN is the variable name from which we store the secret token in the secrets tab
  secrets = ["FIREBASE_TOKEN"]
}