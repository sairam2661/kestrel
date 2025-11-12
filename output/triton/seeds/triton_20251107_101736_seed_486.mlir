"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}], function_type = (!ttgPtr) -> (!ttgPtr), sym_name = "complex_ptr_manipulation", sym_visibility = "public"}> ({
  ^bb0(%arg0: !ttgPtr):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %0 = "tt.addptr"(%arg0, %c1_i32) : (!ttgPtr, i32) -> !ttgPtr
    %1 = "arith.muli"(%c1_i32, %c4_i32) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "tt.addptr"(%0, %1) : (!ttgPtr, i32) -> !ttgPtr
    %3 = "arith.cmpi"(%c1_i32, %c4_i32, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %0, %2) : (i1, !ttgPtr, !ttgPtr) -> !ttgPtr
    "tt.return"(%4) : (!ttgPtr) -> ()
  }) : (!ttgPtr) -> (!ttgPtr)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()