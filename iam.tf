# EC2 Assume Role
resource "aws_iam_role" "ec2_ssm_role" {
  name = "jessie-ec2-ssm-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

# Attach SSM policy (SSM 登入、執行指令的最低權限)
resource "aws_iam_role_policy_attachment" "ec2_ssm_policy" {
  role       = aws_iam_role.ec2_ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# Instance Profile (沒有 instance profile，EC2 吃不到 role)
resource "aws_iam_instance_profile" "ec2_ssm_profile" {
  name = "jessie-ec2-ssm-profile"
  role = aws_iam_role.ec2_ssm_role.name
}


