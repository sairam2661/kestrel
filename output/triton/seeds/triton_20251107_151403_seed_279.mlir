"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, !ttg_ptr) -> (!ttg_ptr, !ttg_ptr, i32), sym_name = "complex_op_chain", sym_visibility = "public"}> ({
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %c7 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %c8 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c9 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %c10 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c11 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    %c12 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %c13 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    %c14 = "arith.constant"() <{value = 14 : i32}> : () -> i32
    %c15 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %ptr0 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> !ttg_ptr
    %ptr1 = "tt.make_range"() <{start = 16 : i32, end = 32 : i32}> : () -> !ttg_ptr
    %ptr2 = "tt.make_range"() <{start = 32 : i32, end = 48 : i32}> : () -> !ttg_ptr
    %result0 = "tt.reduce"(%ptr0) <{axis = 0 : i32}> ({
      ^bb0(%arg0: i32, %arg1: i32):
        %add0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "tt.reduce.return"(%add0) : (i32) -> ()
    }) : (!ttg_ptr) -> i32
    %result1 = "tt.reduce"(%ptr1) <{axis = 0 : i32}> ({
      ^bb0(%arg0: i32, %arg1: i32):
        %sub0 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
        "tt.reduce.return"(%sub0) : (i32) -> ()
    }) : (!ttg_ptr) -> i32
    %result2 = "tt.reduce"(%ptr2) <{axis = 0 : i32}> ({
      ^bb0(%arg0: i32, %arg1: i32):
        %mul0 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
        "tt.reduce.return"(%mul0) : (i32) -> ()
    }) : (!ttg_ptr) -> i32
    %select0 = "arith.select"(%result0, %c1, %c2) : (i32, i32, i32) -> i32
    %select1 = "arith.select"(%result1, %c3, %c4) : (i32, i32, i32) -> i32
    %select2 = "arith.select"(%result2, %c5, %c6) : (i32, i32, i32) -> i32
    %final_result = "arith.addi"(%select0, %select1) : (i32, i32) -> i32
    %final_result2 = "arith.subi"(%final_result, %select2) : (i32, i32) -> i32
    "tt.return"(%ptr0, %ptr1, %final_result2) : (!ttg_ptr, !ttg_ptr, i32) -> (!ttg_ptr, !ttg_ptr, i32)
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()