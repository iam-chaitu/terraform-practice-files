output "instance_public_ip" {
    description = "public ip of aws instance name of learnnew"
    value = aws_instance.learnnew.public_ip  
}