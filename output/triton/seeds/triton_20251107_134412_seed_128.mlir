"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr16tensor64x64xf16) -> !ttg_ptr16tensor64x64xf16, sym_name = "multi_addptr"}> ({
  ^bb0(%arg0: !ttg_ptr16tensor64x64xf16):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg0, %0) : (!ttg_ptr16tensor64x64xf16, i32) -> !ttg_ptr16tensor64x64xf16
    %2 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %3 = "tt.addptr"(%arg0, %2) : (!ttg_ptr16tensor64x64xf16, i32) -> !ttg_ptr16tensor64x64xf16
    %4 = "arith.constant"() <{value = 48 : i32}> : () -> i32
    %5 = "tt.addptr"(%arg0, %4) : (!ttg_ptr16tensor64x64xf16, i32) -> !ttg_ptr16tensor64x64xf16
    "tt.return"(%5) : (!ttg_ptr16tensor64x64xf16) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!ttg_ptr16tensor64x64xf16) -> (), sym_name = "multi_if"}> ({
  ^bb0(%arg0: !ttg_ptr16tensor64x64xf16):
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "scf.if"(%3) ({
      "tt.return"() : () -> ()
    }) : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!ttg_ptr16tensor64x64xf16) -> (), sym_name = "multi_for"}> ({
  ^bb0(%arg0: !ttg_ptr16tensor64x64xf16):
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.for"(%1, %2, %3) ({
    ^bb1(%iv: i32):
      %4 = "tt.addptr"(%arg0, %iv) : (!ttg_ptr16tensor64x64xf16, i32) -> !ttg_ptr16tensor64x64xf16
      "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()