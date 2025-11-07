"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,2],f32>, sym_name = "torch.aten.mm$basic_strict"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,?],f32>):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,2],f32>
    "func.return"(%0) : (!torch.vtensor<[?,2],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

