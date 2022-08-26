locals {
  public_ip = aws_eip.this.public_ip
  instance_id = (
    var.use_spot == true ?
    aws_spot_instance_request.this[0].spot_instance_id :
    aws_instance.this[0].id
  )
}
