terraform init
terraform fmt -recursive
terraform validate
terraform plan

terraform apply -auto-approve

terraform destroy -auto-approve

export TF_LOG="ERROR" #TRACE, DEBUG, INFO, WARN, ERROR
export TF_LOG_PATH="./terraform.log"

git status
git add .
git commit -am "7: Seventh Commit"
git push