"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[5],f32>) -> !torch.vtensor<[5],f32>, sym_name = "nop"}> ({
  ^bb0(%arg0: !torch.vtensor<[5],f32>):
    "func.return"(%arg0) : (!torch.vtensor<[5],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

