module "AWSpider_watcher" {
  source = "./modules/lambda_watcher"

  target_log_group_name = "${module.flow.log_group_name}"
}