"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%2, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%3, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "arith.cmpi"(%0, %5) <{predicate = 4 : i64}> : (tensor<16xi32>, i32) -> tensor<16xi1>
    %7 = "arith.select"(%6, %arg0, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "tt.addptr"(%arg0, %5) : (!tt_ptr, i32) -> !tt_ptr
    %9 = "tt.expand_dims"(%7) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
    %10 = "tt.call"() <{callee = @cmp_all_contiguous}> : () -> tensor<128xi1>
    "tt.return"(%9) : (tensor<1x16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "cmp_all_contiguous"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()