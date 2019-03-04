workflow "Build and Deploy" {
  on = "push"
  resolves = ["Deploy"]
}

action "Install" {
  uses = "actions/npm@master"
  args = "install"
}

action "Build" {
  needs = "Install"
  uses = "actions/npm@master"
  args = "run build"
}

action "Deploy" {
  needs = "Build"
  uses = "w9jds/firebase-action@master"
  args = "deploy --only hosting"
  env = {
    PROJECT_ID = "fir-hosting-a44ed"
    PUBLIC_PATH = "build"
  }
  secrets = ["FIREBASE_TOKEN"]
}