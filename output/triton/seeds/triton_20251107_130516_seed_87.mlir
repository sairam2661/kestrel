"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.pointer_range = 32 : i32}], function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "triton_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %0 = "tt.reduce"(%arg0) <{operation = "add", identity = 0 : i32}> : (tensor<i32>) -> i32
      %1 = "tt.reduce"(%arg1) <{operation = "mul", identity = 1 : i32}> : (tensor<i32>) -> i32
      %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.subi"(%2, %c0) : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %c1, "sgt") : (i32, i32) -> i1
      "tt.return"(%3, %4) : (i32, i1) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()