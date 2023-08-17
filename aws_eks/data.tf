data "aws_eks_cluster" "dev-cluster" {
  name = "dev-cluster"
}

data "aws_eks_cluster_auth" "dev-cluster" {
  name = "dev-cluster"
}