"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "custom_region_names"}> ({
    "test.polyfor"() ({
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      "foo"() : () -> ()
    }) {arg_names = ["i", "j", "k"]} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "weird_names"}> ({
    "test.polyfor"() ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: index):
      %0 = "foo"() : () -> i32
    }) {arg_names = ["a .^x", "0"]} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

