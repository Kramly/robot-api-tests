# 🤖 Robot Framework API Tests

This project is a simple and clean setup for **API testing** using **Robot Framework** and **Python RequestsLibrary**.  
It can be run locally or automatically with **GitHub Actions**.

---

## 🧱 Project Structure

robot-api-tests/
│
├── tests/ # Robot test suites
│ └── test_api.robot
│
├── resources/ # Shared variables and reusable keywords
│ ├── variables.robot
│ └── keywords.robot
│
├── reports/ # Test output (log.html, report.html, etc.)
│
├── requirements.txt # Python dependencies
├── .gitignore # Ignored files/folders
└── README.md # Project documentation

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the repository

```bash
git clone https://github.com/Kramly/robot-api-tests.git
cd robot-api-tests

2️⃣ Create and activate a virtual environment (Ubuntu/Linux)
python3 -m venv venv
source venv/bin/activate

3️⃣ Install dependencies
pip install -r requirements.txt

🧪 Run the Tests

Run all Robot Framework tests and save reports:
robot -d reports tests/


🧠 What We Learned So Far

✅ How to structure a Robot Framework API testing project
✅ How to use RequestsLibrary for REST API calls
✅ How to set up and activate a Python virtual environment
✅ How to use requirements.txt for dependency management
✅ How to run Robot tests and interpret reports
✅ How to create .gitignore to keep the repo clean
✅ How to initialize Git, connect to GitHub, and push code
✅ How to create a GitHub repository directly from the command line using gh
✅ How to deactivate the virtual environment

🚀 Next Steps 
Add GitHub Actions CI/CD to automatically run tests on every push or pull request.
We’ll use a simple workflow that:

Sets up Python

Installs Robot Framework

Runs the API tests

Uploads the report as a build artifact
----
This workflow runs the Robot tests on each push, saves reports as artifacts, and deploys them to GitHub Pages.
We then create and configure the GitHub Pages branch:

git checkout main
git checkout --orphan gh-pages
git rm -rf .
echo "GitHub Pages branch" > README.md
git add README.md
git commit -m "Initialize GitHub Pages branch"
git push origin gh-pages
git checkout main

Go to GitHub → Settings → Pages, select "Deploy from a branch", choose the gh-pages branch, and save.
To trigger the workflow and publish the report:
echo " " >> README.md
git add README.md
git commit -m "Trigger Robot test workflow"
git push

GitHub Actions will automatically run the Robot Framework API tests, upload the report.html and log.html files, and deploy them to your GitHub Pages site.
Once complete, open:

https://kramly.github.io/robot-api-tests/log.html

Here you can view your live Robot Framework reports. report.html gives a summary, and log.html provides detailed steps.
In summary, we created a Robot Framework project for API testing, used Python virtual environments, automated execution with GitHub Actions, and published reports on GitHub Pages.
