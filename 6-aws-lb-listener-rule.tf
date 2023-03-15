resource "aws_lb_listener_rule" "static" {
  for_each = var.listener_rules

  listener_arn = aws_lb_listener.front_end.arn
  priority     = each.value.priority

  action {
    type = "forward"
    # target_group_arn = each.value.target_group_arn
    target_group_arn = aws_lb_target_group.test.arn
  }

  condition {
    path_pattern {
      values = each.value.path_pattern
    }
  }

  condition {
    host_header {
      values = each.value.host_header
    }
  }
}
