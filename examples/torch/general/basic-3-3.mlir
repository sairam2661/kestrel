"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],ui32>, !torch.vtensor<[?,?],ui32>) -> !torch.vtensor<[?,2],ui32>, sym_name = "torch.aten.mm$basic_unsigned"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],ui32>, %arg1: !torch.vtensor<[?,?],ui32>):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor<[?,?],ui32>, !torch.vtensor<[?,?],ui32>) -> !torch.vtensor<[?,2],ui32>
    "func.return"(%0) : (!torch.vtensor<[?,2],ui32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

