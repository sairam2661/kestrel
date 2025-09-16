"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "slicing_test_function_argument"}> ({
  ^bb0(%arg0: index):
    %0 = "slicing-test-op"(%arg0, %arg0) : (index, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

