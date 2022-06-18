
#create private subnet AZ-a
resource "aws_subnet" "eks-private-us1a" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name                              = "eks-private-subnet-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io./cluster/eks-demo" = "owned"

  }
}

#create private subnet AZ-b
resource "aws_subnet" "eks-private-us1b" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name                              = "eks-private-subnet-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io./cluster/eks-demo" = "owned"

  }
}

#create public subnet - AZ-a
resource "aws_subnet" "eks-public-us1a" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "eks-public-subnet-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io./cluster/eks-demo" = "owned"

  }
}

#create public subnet - AZ-b
resource "aws_subnet" "eks-public-us1b" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "eks-public-subnet-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io./cluster/eks-demo" = "owned"

  }
}




