output "cluster_endpoint" {
  value = aws_eks_cluster.k8s_cluster.endpoint
}

output "cluster_ca_data" {
  value = aws_eks_cluster.k8s_cluster.certificate_authority[0].data
}
