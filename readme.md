terraform init
terraform fmt -recursive
terraform validate
terraform plan

terraform apply -auto-approve

terraform destroy -auto-approve

git status
git add .
git commit -am "6: Sixth Commit"
git push