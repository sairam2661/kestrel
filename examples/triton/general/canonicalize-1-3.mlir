"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<f16>) -> !tt.ptr<f16>, sym_name = "fold_addptr_scalar"}> ({
  ^bb0(%arg0: !tt.ptr<f16>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg0, %0) : (!tt.ptr<f16>, i32) -> !tt.ptr<f16>
    "tt.return"(%1) : (!tt.ptr<f16>) -> ()
  }) : () -> ()
}) : () -> ()

