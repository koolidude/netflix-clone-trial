output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.netflix_clone.repository_url
}

output "kubeconfig" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "vpc_id" {
  value = aws_vpc.netflix_clone_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.netflix_clone_subnet[*].id
}
