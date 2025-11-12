"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi16>, i32) -> tensor<16x32xi16>, sym_name = "scratch_alloc_test"}> ({
    ^bb0(%arg0: tensor<16x32xi16>, %arg1: i32):
      %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttgPtr
      %2 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %4 = "arith.subi"(%arg1, %3) : (i32, i32) -> i32
      %5 = "arith.cmpi"(%arg1, %4, "uge") : (i32, i32) -> i1
      %6 = "arith.select"(%5, %arg0, %arg0) : (i1, tensor<16x32xi16>, tensor<16x32xi16>) -> tensor<16x32xi16>
      "tt.return"(%6) : (tensor<16x32xi16>) -> ()
  }) : () -> ()
}) : () -> ()