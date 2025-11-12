"builtin.module"() ({
  "tt.func"() <{function_type = (!ttghandle) -> (), sym_name = "nested_loops"}> ({
    ^bb0(%arg0: !ttghandle):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      scf.for %i0 : i32 in_range  .bounds %0, %1 : i32 step  .step 1 : i32  iter_args  .init_args %arg0 : !ttghandle  ->  (!ttghandle)  do  .body  "^bb1(%arg0: !ttghandle, %i: i32)":
      (  )^bb1(%arg0: !ttghandle, %i: i32):
        %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
        scf.for %j : i32 in_range  .bounds %2, %3 : i32 step  .step 1 : i32  iter_args  .init_args %arg0 : !ttghandle  ->  (!ttghandle)  do  .body  "^bb2(%arg0: !ttghandle, %j: i32)":
        (    )^bb2(%arg0: !ttghandle, %j: i32):
          %4 = "arith.addi"(%i, %j) : (i32, i32) -> i32
          %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
          %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
          scf.yield %arg0 : !ttghandle
        scf.yield %arg0 : !ttghandle
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()