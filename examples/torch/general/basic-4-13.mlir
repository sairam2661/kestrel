"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.runtime.assert"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    "torch.runtime.assert"(%0) <{message = "this should not fail"}> : (!torch.bool) -> ()
    "func.return"(%arg0) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

