
Terraform - build eks cluster with 2 nodegroup (Blue & green) with Autoscaler
The Module setup jenkins server on ubuntu

### Connecting
* Run ```aws eks --region eu-north-1b update-kubeconfig --name dev-cluster``` to add the context to your kubeconfig file.

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.2.6 |

## Providers

| Name | Version |
|------|---------|
| aws | 4.21.0 |
| helm | 2.6.0 |
| kubernetes | 2.12.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| my-cluster | terraform-aws-modules/eks/aws | 18.28.0 |

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.dev-gw](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/internet_gateway) | resource |
| [aws_route_table.dev-route-table](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/route_table) | resource |
| [aws_route_table_association.dev1-sub-to-dev-rt](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.dev2-sub-to-dev-rt](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/route_table_association) | resource |
| [aws_security_group.allow-web-traffic](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/security_group) | resource |
| [aws_subnet.dev1-subnet](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/subnet) | resource |
| [aws_subnet.dev2-subnet](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/subnet) | resource |
| [aws_vpc.dev-vpc](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/resources/vpc) | resource |
| [helm_release.jenkins](https://registry.terraform.io/providers/hashicorp/helm/2.6.0/docs/resources/release) | resource |
| [aws_eks_cluster.dev-cluster](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.dev-cluster](https://registry.terraform.io/providers/hashicorp/aws/4.21.0/docs/data-sources/eks_cluster_auth) | data source |


