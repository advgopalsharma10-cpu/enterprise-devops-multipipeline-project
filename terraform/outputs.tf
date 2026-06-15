output "cluster_name" { value = aws_eks_cluster.main.name }
output "cluster_endpoint" { value = aws_eks_cluster.main.endpoint }
output "vpc_id" { value = aws_vpc.main.id }
output "private_subnets" { value = aws_subnet.private[*].id }
output "public_subnets" { value = aws_subnet.public[*].id }
output "node_role_arn" { value = aws_iam_role.eks_node.arn }
