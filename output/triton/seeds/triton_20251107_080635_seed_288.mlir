"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
      %1 = "tt.reduce"(%0) <{operation = "add"}> ({
        ^bb1(%arg1: i32):
          "tt.return"(%arg1) : (i32) -> ()
      }) : (tensor<10xi32>) -> i32
      %2 = "tt.make_range"() <{end = 5 : i32, start = 0 : i32}> : () -> tensor<5xi32>
      %3 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<5xi32>) -> tensor<5x1xi32>
      %4 = "tt.addptr"(%0, %3) : (!tt_ptr, tensor<5x1xi32>) -> !tt_ptr
      "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()