module "my-alb" {
  source = "../"

  listener_rules = {
    listener_1 = {
      priority         = 5
      target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:424432388155:targetgroup/tf-example-lb-tg/b7017ecae5b39619"
      path_pattern     = ["/static/*"]
      host_header      = ["example.com"]
    }
    listener_2 = {
      priority         = 6
      target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:424432388155:targetgroup/tf-example-lb-tg/b7017ecae5b39619"
      path_pattern     = ["/images/*"]
      host_header      = ["example.com"]
    }
    listener_3 = {
      priority         = 7
      target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:424432388155:targetgroup/tf-example-lb-tg/b7017ecae5b39619"
      path_pattern     = ["/static/*"]
      host_header      = ["example.com"]
    }
    listener_4 = {
      priority         = 8
      target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:424432388155:targetgroup/tf-example-lb-tg/b7017ecae5b39619"
      path_pattern     = ["/images/*"]
      host_header      = ["example.com"]
    }
  }
}
