"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32, tt.pointer_range = 64 : i32}], function_type = (!tt_ptr_0, !tt_ptr_1) -> (!tt_ptr_2), sym_name = "tensor_reduce_xor", sym_visibility = "private"}> ({
  ^bb0(%arg0: !tt_ptr_0, %arg1: !tt_ptr_1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32, step = 1 : i32}> : () -> !tt_range
    "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 16 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %2 = "tt.addptr"(%arg1, %iv) : (!tt_ptr_1, i32) -> !tt_ptr_1
        %3 = "tt.load"(%2) : (!tt_ptr_1) -> i32
        %4 = "arith.xori"(%0, %3) : (i32, i32) -> i32
        %5 = "tt.store"(%4, %2) : (i32, !tt_ptr_1) -> ()
        "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %6 = "tt.reduce"(%arg0, %1) <{binary_op = "arith.xori"}> ({
      ^bb2(%acc: i32, %elem: i32):
        %7 = "arith.xori"(%acc, %elem) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    %8 = "arith.addi"(%6, %0) : (i32, i32) -> i32
    %9 = "tt.store"(%8, %arg0) : (i32, !tt_ptr_0) -> ()
    "tt.return"(%arg0) : (!tt_ptr_0) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()