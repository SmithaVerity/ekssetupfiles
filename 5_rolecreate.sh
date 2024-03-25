aws iam create-role --role-name ctipsfisrole --assume-role-policy-document file://fis-role-trust-policy.json

aws iam put-role-policy --role-name ctipsfisrole --policy-name ctipsfispolicy --policy-document file://fis-role-permissions-policy.json

aws iam create-role --role-name ssmpermissionsrole --assume-role-policy-document file://ssmpermissions-policy.json

aws iam put-role-policy --role-name ctipsfisrole --policy-name ctipsfispolicy --policy-document file://fis-role-permissions-policy.json
