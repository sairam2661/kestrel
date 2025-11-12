"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc) -> (!ttg_global_scratch_alloc), sym_name = "complex_flow"}> ({
  ^bb0(%arg0: !ttg_global_scratch_alloc):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    scf.if %2 : i1 -> ()  ^bb1(%arg2: i1) : i1
    .block1:
      si128 %3 = "arith.constant"() <{value = 12345678901234567890 : si128}> : () -> si128
      %4 = "arith.constant"() <{value = 98765432109876543210 : si128}> : () -> si128
      %5 = "arith.addi"(%3, %4) : (si128, si128) -> si128
      tt.return %5 : (si128) -> ()
    ^bb2(%arg3: i1) : i1
    .block2:
      si32 %6 = "arith.constant"() <{value = -1 : si32}> : () -> si32
      scf.for %iv0025763142357471936 : i32,   si32 %0  =  si32  .to  .10  : i32,  si32  si32  .step  .1  : i32 -> ()  ^bb3(%iv0025763142357471936: i32) : i32
      .block3:
        si32 %7 = "arith.xori"(%iv0025763142357471936, %6) : (i32, i32) -> i32
        tt.reduce %arg0  : (!ttg_global_scratch_alloc) -> ()  ^bb4(%arg4: !ttg_global_scratch_alloc, %arg5: i32) : i32
        .block4:
          si32 %8 = "arith.addi"(%arg5, %7) : (i32, i32) -> i32
          "tt.reduce.return"(%8) : (i32) -> ()
        scf.yield
      "tt.return" : () -> () scf.yield
  "tt.return" : () -> () scf.yield
  "ttg.global_scratch_alloc" : () -> (!ttg_global_scratch_alloc)
}) : () -> () "ttg.num-ctas"  (si32  (si32   )  )  (  {i32  .  si32  1  ,  "ttg.num-warps"  :i32   si32  .  si32  2  : i32}) : () -> () "ttg.num-warps"  (i32  (  ))  (  {i32  .  si32  2  : i32}) : () -> () "ttg.global_scratch_size"  (i32  (  ))  (  {i32  .  si32  131072  : i32}) : () -> () "ttg.global_scratch_align"  (i32  (  ))  (  {i32  .  si32  128  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  ))  (  {i32  .  si32  64  : i32}) : () -> () "ttg.global_scratch_usage"  (i32  (  )) 