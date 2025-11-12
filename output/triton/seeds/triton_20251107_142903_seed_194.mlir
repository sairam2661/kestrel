"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "fuzz_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<4x4xi32>) -> tensor<4x1x4xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<4x1x4xi32>}> : () -> tensor<4x1x4xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<4x1x4xi32>, tensor<4x1x4xi32>) -> tensor<4x1x4xi32>
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<4x1x4xi32>, tensor<4x1x4xi32>) -> tensor<4x1x4xi32>
    %4 = "tt.reduce"(%3, %1) <{operation = "add"}> : (tensor<4x1x4xi32>, tensor<4x1x4xi32>) -> tensor<4x4xi32>
    %5 = "arith.cmpi"(%4, %1) <{predicate = 1 : i64}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %6 = "scf.if"(%5) ({
      ^bb1(%arg1: tensor<4x4xi1>):
      %7 = "tt.reduce"(%arg1, %1) <{operation = "add"}> : (tensor<4x4xi1>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %8 = "arith.cmpi"(%7, %1) <{predicate = 1 : i64}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      "scf.yield"(%8) : (tensor<4x4xi1>) -> ()
    }, {
      ^bb2:
        %9 = "arith.constant"() <{value = dense<0> : tensor<4x4xi1>}> : () -> tensor<4x4xi1>
      "scf.yield"(%9) : (tensor<4x4xi1>) -> ()
    }) : (tensor<4x4xi1>) -> tensor<4x4xi1>
    %10 = "tt.call"("sum_func") <{operands = ["%6"]}> : (tensor<4x4xi1>) -> i32
    %11 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<4x4xi1>) -> i32, sym_name = "sum_func"}> ({
  ^bb3(%arg2: tensor<4x4xi1>):
    %13 = "tt.reduce"(%arg2, %1) <{operation = "add"}> : (tensor<4x4xi1>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %14 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %15 = "arith.subi"(%14, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %16 = "tt.reduce"(%13, %15) <{operation = "add"}> : (tensor<4x4xi32>, tensor<16xi32>) -> tensor<16xi32>
    %17 = "tt.reduce"(%16, %1) <{operation = "add"}> : (tensor<16xi32>, tensor<16xi32>) -> i32
    "tt.return"(%17) : (i32) -> ()
  }) : () -> ()
}) : () -> ()