"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<tensor<64x64xf16>>) -> !tt.ptr<tensor<64x64xf16>>, sym_name = "fold_advance"}> ({
  ^bb0(%arg0: !tt.ptr<tensor<64x64xf16>>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.advance"(%arg0, %0, %0) : (!tt.ptr<tensor<64x64xf16>>, i32, i32) -> !tt.ptr<tensor<64x64xf16>>
    "tt.return"(%1) : (!tt.ptr<tensor<64x64xf16>>) -> ()
  }) : () -> ()
}) : () -> ()

