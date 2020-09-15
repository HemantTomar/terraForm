# Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "private_subnet_assoc" {
  count          = 2
  route_table_id = aws_default_route_table.private_route.id
  subnet_id      = aws_subnet.private_subnet[count.index].id
  depends_on = [
    aws_default_route_table.private_route,
    aws_subnet.private_subnet,
  ]
}
