resource "aws_route53_record" "prod" {
  zone_id = "${var.zone_id}"
  name    = "docker.${var.domain}"   
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.prod.public_ip}"]
  
}
