"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<16xi32>, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 512 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 256 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 128 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 64 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 32 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %7 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %8 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %9 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %10 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %11 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %12 = "arith.subi"(%arg1, %arg0) : (i32, i32) -> i32
      %13 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %14 = "arith.divsi"(%arg1, %arg0) <{predicate = 0}> : (i32, i32) -> i32
      %15 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
      %16 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      %17 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1}> : (i32, i32) -> i1
      %18 = "arith.select"(%17, %11, %12) : (i1, i32, i32) -> i32
      %19 = "arith.addi"(%13, %14) : (i32, i32) -> i32
      %20 = "arith.muli"(%15, %16) : (i32, i32) -> i32
      %21 = "arith.constant"() <{value = dense<0 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
      %22 = "arith.constant"() <{value = dense<1 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
      %23 = "arith.addi"(%21, %22) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%23) : (tensor<16xi32>) -> ()
  }) : () -> tensor<16xi32>
}) : () -> ()