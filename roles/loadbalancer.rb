name "load_balancer"
description "blah"
run_list "recipe[myhaproxy]"
override_attributes({
  "starter_name" => " CarlosC",
})
