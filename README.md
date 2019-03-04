## Github Actions Demo (Deploy a React App to Firebase Hosting using Github Actions)


### 1. First create a new project using create react app
``` create-react-app firebase-deploy```

### 2. Go into the folder
``` cd firebase-deploy```

### 3. Install firebase tools
``` npm i -g firebase-tools```

### 4. Login in firebase from CLI
``` firebase login ```

### 5. Initialize the new firebase project in the same directory
``` firebase init ```

### 6. Choose Hosting: Configure and deploy Firebase Hosting sites
### 7. Choose [create a new project]
### 8. Answer the following questions like below:
    ####  What do you want to use as your public directory? (public) build

    #### Configure as a single-page app (rewrite all urls to /index.html)? Yes

    #### File build/index.html already exists. Overwrite? No

### Now, you will need to create a new project. To do so, go inside your Firebase console (https://console.firebase.google.com/), click on the add project button, give it a name and create your new project.

### After your app is initialized, add your newly created project using the following command and create an alias for the project (here I choose firebase-react-deploy).
``` firebase use --add ```

### The last step is to actually deploy the app and let the magic happen!

### Here we are using Github Actions to deploy our App everytime when we make some changes. 
### So just make some changes in any file and then see the Actions tab in the your repo on Github. You'll see your Actions running one by one

### Check .github/main.workflow to see how the actions are working.
