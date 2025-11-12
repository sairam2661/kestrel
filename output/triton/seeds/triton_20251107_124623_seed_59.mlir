"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt_ptr16, !tt_ptr32) -> (), sym_name = "mixed_dtypes_kernel"}> ({
  ^bb0(%arg0: !tt_ptr16, %arg1: !tt_ptr32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32

    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "arith.constant"() <{value = dense<4> : tensor<256xi32>}> : () -> tensor<256xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %3 = "tt.addptr"(%arg0, %c1_i32) : (!tt_ptr16, i32) -> !tt_ptr16
    %4 = "tt.addptr"(%arg1, %c2_i32) : (!tt_ptr32, i32) -> !tt_ptr32

    %5 = "arith.cmpi"(%0, %c0_i32) <{predicate = 1 : i64}> : (tensor<256xi32>, i32) -> tensor<256xi1>
    %6 = "tt.reduce"(%5, %c0_i32) <{reduce_op = "add", operands = [tensor<256xi1>, i32]}> : (tensor<256xi1>, i32) -> i32

    "tt.call"(%arg0, %arg1) <{callee = @empty_kernel}> : (!tt_ptr16, !tt_ptr32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "empty_kernel"}> ({
  ^bb0:
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()