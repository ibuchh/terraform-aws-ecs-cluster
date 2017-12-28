resource "aws_ecs_service" "mesh-ecs-service" {
  name                               = "${var.ecs-service-name}"
  iam_role                           = "${var.ecs-service-role-arn}"
  cluster                            = "${aws_ecs_cluster.mesh-ecs-cluster.id}"
  task_definition                    = "${aws_ecs_task_definition.mesh-sample-definition.arn}"
  desired_count                      = 2
  deployment_maximum_percent         = 100
  deployment_minimum_healthy_percent = 0

  load_balancer {
    target_group_arn = "${var.ecs-target-group-arn}"
    container_port   = 80
    container_name   = "simple-app"
  }
}
