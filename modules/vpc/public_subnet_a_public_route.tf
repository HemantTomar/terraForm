# Associate Public Subnet with Public Route Table
resource "aws_route_table_association" "public_subnet_assoc" {
  count          = 2
  route_table_id = aws_route_table.public_route.id
  subnet_id      = aws_subnet.public_subnet[count.index].id
  depends_on = [
    aws_route_table.public_route,
    aws_subnet.public_subnet,
  ]
}
