aws iam create-role --role-name ctipsfisrole --assume-role-policy-document file://fis-role-trust-policy.json

aws iam put-role-policy --role-name ctipsfisrole --policy-name ctipsfispolicy --policy-document file://fis-role-permissions-policy.json

aws iam create-role --role-name ssmpermissionsrole --assume-role-policy-document file://ssmrole-trust-policy.json

aws iam attach-role-policy --role-name ssmpermissionsrole --policy-arn arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore

aws iam create-instance-profile --instance-profile-name SSMInstanceProfile

aws iam add-role-to-instance-profile --instance-profile-name SSMInstanceProfile --role-name ssmpermissionsrole
