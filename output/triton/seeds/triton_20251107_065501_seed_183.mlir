"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr_memref_t, index, !ttg_ptr_memref_t) -> i1, sym_name = "compare_ranges_and_reduce"}> ({
  ^bb0(%arg0: !ttg_ptr_memref_t, %arg1: index, %arg2: !ttg_ptr_memref_t):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %range0 = "tt.make_range"(%c0_i32, %c1_i32) <{step = 1 : i32}> : (i32, i32) -> !ttg_ptr_memref_t
    %range1 = "tt.make_range"(%c2_i32, %c3_i32) <{step = 1 : i32}> : (i32, i32) -> !ttg_ptr_memref_t

    %cmp0 = "tt.cmpi"(%range0, %range1) <{predicate = 0 : i64}> : (!ttg_ptr_memref_t, !ttg_ptr_memref_t) -> i1
    %cmp1 = "tt.cmpi"(%range0, %arg0) <{predicate = 1 : i64}> : (!ttg_ptr_memref_t, !ttg_ptr_memref_t) -> i1

    %select0 = "arith.select"(%cmp0, %cmp1, %c0_i32) : (i1, i32, i32) -> i32
    %select1 = "arith.select"(%select0, %c1_i32, %c2_i32) : (i32, i32, i32) -> i32

    %add0 = "arith.addi"(%select1, %arg1) : (i32, index) -> i32

    %reduce = "tt.reduce"() ({^bb1(%acc: i32, %val: i32):
      %add1 = "arith.addi"(%acc, %val) : (i32, i32) -> i32
      "scf.yield"(%add1) : (i32) -> ()
    }) {init = 0 : i32} : (i32, !ttg_ptr_memref_t) -> i32

    "tt.return"(%reduce) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()