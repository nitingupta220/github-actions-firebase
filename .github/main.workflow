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
  uses = "w9jds/firebase-action@master"
  args = "deploy --only hosting"
  env = {
    PROJECT_ID = "fir-hosting-a44ed"
  }
  secrets = ["FIREBASE_TOKEN"]
}